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



  #パスワード変更画面の処理
  def password_config
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    user_information = Member.where(user_id:"aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    @password = user_information[0].password
    @mail_address = user_information[0].mail_address

    @to_changed_password = params[:to_changed_password]
    @confilm_password = params[:confilm_password]

    if request.post?
      if @to_changed_password == @confilm_password
        #ユーザーのメールアドレスを取得
        #mail_address = user_information[0].mail_address

        #一時的にパスワード変更情報のテーブルを作成
        UserUpdatePassword.create(mail_address: @mail_address,date: Time.now ,after_password: @to_changed_password)
        #ユーザー宛にメールを送信する
        sendMail('k016c1122@it-neec.jp')


        redirect_to '/setting/password_completion'
      else
        redirect_to '/setting/password_config'
    end
    end

  end

  def change_completion()
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    #user_information = UserConfig.where(user_id:"aragaki_yui")
    user_information = Member.where(user_id:"aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    @mail_address = user_information[0].mail_address
    #@changed_mail_address = user_information[0].changed_mail_address
    #@confilm_mail_address = user_information[0].confilm_mail_address

    #変更するパスワードの情報を取得
    after_password_information = UserUpdatePassword.where(mail_address:@mail_address)

    @after_password = after_password_information[0].after_password

    #変更後パスワードを Memberテーブル の password に上書きし、保存
    user_information[0].password = @after_password
    user_information[0].save

    #使用し終わったレコードを削除
    after_password_information.delete_all()







  end

  def sendMail(address)
    require 'mail'

    mail=Mail.new do
      from 'site@tomotinteam8.gunma.jp'
      to address
      subject '【nikki】ユーザー情報変更のお知らせ'

      #変更完了後画面のURLをメールで送付
      body '下記のURLよりユーザー情報変更を完了させてください。
http://localhost/setting/change_completion/'
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
