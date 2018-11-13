class SettingController < ApplicationController

  #ユーザー情報表示
  def index
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    user_information = Member.where(user_id:"Feb22TN")
    #ユーザー情報の各項目を変数に格納
    @mail_address = user_information[0].mail_address
  end
end
