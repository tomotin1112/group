class MypageController < ApplicationController
  #ユーザー情報表示
  def index
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    user_information = Member.where(user_id:"aragaki_yui")
    #ユーザー情報の各項目を変数に格納
    @user_id = user_information[0].user_id
    @account_name = user_information[0].account_name
    @profile = user_information[0].profile
    @profile_image = user_information[0].profile_image

  end
end
