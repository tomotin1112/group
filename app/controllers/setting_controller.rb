class SettingController < ApplicationController

  #ユーザー情報表示
  def index
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    user_information = UserConfig.where(user_id:"aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    @mail_address = user_information[0].mail_address
    @changed_mail_address = user_information[0].changed_mail_address
    @confilm_mail_address = user_information[0].confilm_mail_address


  end

  def change

    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    user_information = UserConfig.where(user_id: "aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    to_changed_address = params[:to_changed_address]
    confilm_address = params[:confilm_address]

    UserConfig.where(user_id: "aragaki_yui").update_all(changed_mail_address: to_changed_address,confilm_mail_address: confilm_address)


    #現在のメールアドレス
    @mail_address = user_information[0].mail_address
    #変更後のメールアドレス
    @changed_mail_address = user_information[0].changed_mail_address
    #確認用のメールアドレス
    @confilm_mail_address = user_information[0].confilm_mail_address

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
end
