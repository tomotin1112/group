class SettingController < ApplicationController

  #ユーザー情報表示
  def index
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    #user_information = UserConfig.where(user_id:"aragaki_yui")
    user_information = Member.where(user_id:"aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    @mail_address = user_information[0].mail_address
    #@changed_mail_address = user_information[0].changed_mail_address
    #@confilm_mail_address = user_information[0].confilm_mail_address


  end

  def change

    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    #user_information = Member.where(user_id: "aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    #to_changed_address = params[:to_changed_address]
    #confilm_address = params[:confilm_address]

   # UserConfig.where(user_id: "aragaki_yui").update_all(changed_mail_address: to_changed_address,confilm_mail_address: confilm_address)


    #現在のメールアドレス
    #@mail_address = user_information[0].mail_address
    #変更後のメールアドレス
    #@changed_mail_address = user_information[0].changed_mail_address
    #確認用のメールアドレス
    #@confilm_mail_address = user_information[0].confilm_mail_address

    puts("現在のメールアドレス")
    puts(@mail_address)
    puts("")
    puts("変更後のメールアドレス")
    puts(@changed_mail_address)
    puts("")
    puts("確認用のメールアドレス")
    puts(@confilm_mail_address)


    redirect_to '/setting'
  end

  #パスワード変更画面の処理
  def password_config
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    user_information = Member.where(user_id:"aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    @password = user_information[0].password

    @to_changed_password = params[:to_changed_password]
    @confilm_password = params[:confilm_password]

    if request.post?
      if @to_changed_password == @confilm_password
        #ユーザーのメールアドレスを取得
        mail_address = user_information[0].mail_address

        #一時的にパスワード変更情報のテーブルを作成
        UserUpdatePassword .create(mail_address: mail_address,date: Time.now ,after_password: @to_changed_password)

        redirect_to '/setting/password_completion'
      else
        redirect_to '/setting/password_config'
    end
    end

  end

  def sendMail(address)
    require 'mail'

    mail=Mail.new do
      from 'site@tomotinteam8.gunma.jp'
      to address
      subject '【nikki】登録のご案内'

      #変更完了後画面のURLをメールで送付
      body '下記のURLより本登録を完了させてください。
http://114.167.17.61/signup/step3/'
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
