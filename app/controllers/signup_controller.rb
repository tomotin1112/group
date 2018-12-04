class SignupController < ApplicationController
  layout 'signup'

  def step1; end

  def step2
    #リクエストがPOSTか
    if request.post?
      #メンバーテーブルからメールアドレスで検索し、結果がないか
      if Member.where(mail_address:params[:address]).empty?
        #登録がされていない場合

        #randメソッド呼び出し
        checker=rand

        #サインアップテーブルに、入力されたメールアドレスとchecker、現在の時刻をinsert
        Signup.create(mail_address: params['address'], checker: checker,date: Time.now)

        #checkerとメールアドレスを引数にsendMailメソッドを呼ぶ
        sendMail(checker,params[:address])

        #セッションにアドレスを登録（次のページへの値渡しの為)
       session[:address]=params[:address]
      else
        #登録されている場合
        flash[:notice]='そのメールアドレスは既に登録されています'

        #アクションstep1にリダイレクト
        redirect_to :action => 'step1'
      end
    end
  end

  def step3
    @style = '3'

    #URLに含まれるパラメータの長さが80文字か
    if params[:checker].length == 80
      #一致した場合

      #セッションにパラメータの値を保存
      session[:checker]=params[:checker]

      #signupテーブルからcheckerで検索し、変数signupに代入
      signup = Signup.where(checker: params[:checker])

      #セッション[address]にsignup[0]のメールアドレスを保存
      session[:address]=signup[0].mail_address
    else
      redirect_to :action => 'step1'
    end
  end

  def step4
    @style = '4'
    if request.post?
      if params[:checkbox]=="1"
        redirect_to :action => 'step5'
      else
        redirect_to :action => 'step4',notice:'規約に同意してください'
      end
    end
  end

  def step5
    @style='5'
    @checker=session[:checker]
    if request.post?
      Member.create(user_id: session[:userid],password: session[:password],
                    mail_address: session[:address],account_name: session[:accountname],
                    birth_day: session[:birthday],register_day: session[:register_day],gender_id: session[:gender])
      #signupテーブルからcheckerで検索し、変数signupに代入
      signup = Signup.where(checker: params[:checker])
      signup.delete_all;
      redirect_to :action=>'step6'
    end

  end

  def step6
    @style='6'
  end

  def kiyaku
    render layout: false
  end

  def check
    password=params[:password]
    if password==params[:re_password]
      if params[:user_id]==''
        redirect_to '/signup/step3/'+session[:checker],user: 'ユーザIDを入力してください'
      end
      result=Member.where(user_id:params[:user_id]).count
      if result == 0
        time = Time.now
        time = time.year.to_s + '/' + time.month.to_s + '/' + time.day.to_s + ' ' + time.hour.to_s + ':' + time.min.to_s + ':' + time.sec.to_s
        @userid = params[:userid]
        @password = Digest::MD5.hexdigest(params[:password]+time)
        @mail_address = params[:address]
        @account_name = params[:accountname]
        @birthday = params[:year]+params[:month]+params[:day]
        @gender = params[:gender]
        @register_day = time

        if @password=='' or @account_name=='' or params[:year]=='' or params[:month]=='' or params[:day]=='' or @gender==''
          redirect_to '/signup/step3/'+session[:checker],notice: '入力内容に誤りがあります!!!'
        else
          session[:userid] = @userid
          session[:password] = @password
          session[:address] = @mail_address
          session[:accountname] = @account_name
          session[:birthday] = params[:year] + params[:month] + params[:day]
          session[:year] = params[:year]
          session[:month] = params[:month]
          session[:day] = params[:day]
          session[:birthday] = params[:year] + "-" + params[:month] + "-" + params[:day]
          session[:gender] = @gender
          session[:register_day] = @register_day

          redirect_to :action => ('step4')
        end

      else
        redirect_to '/signup/step3/'+session[:checker],user: 'そのユーザ名は既に使用されています'
      end
    else
      redirect_to '/signup/step3/'+session[:checker],pass: 'パスワードが一致しません'
    end
  end

  def rand()
    #60桁のランダムな文字列を生成
    checker=SecureRandom.base64(60)

    #生成した文字列の中で/を8に置き換え
    checker.gsub!(/\//,'8')

    return checker
  end

  def sendMail(checker,address)
    require 'mail'

    mail=Mail.new do
      from 'site@tomotinteam8.gunma.jp'
      to address
      subject '【nikki】登録のご案内'
      body '下記のURLより本登録を完了させてください。
http://114.167.17.61/signup/step3/' + checker
    end

    mail.delivery_method :smtp, {
        address: 'sv9.star.ne.jp',
        port: 587,
        user_name: 'site@tomotinteam8.gunma.jp',
        password: 'tomotin4812'
    }
    mail.deliver!
  end

end
