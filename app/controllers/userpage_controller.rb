class UserpageController < ApplicationController
  include Common
  #ユーザー情報表示
  def index
    current_user
    #ユーザーのレコードを検索、user_informationに格納
    #user_information = Member.where(user_id:session[:current_user])
    #user_information = Member.where(user_id:"aragaki_yui")
    user_information = Member.find(params[:id])
    #ユーザー情報の各項目を変数に格納
    @user_id = user_information.user_id
    @account_name = user_information.account_name
    @profile = user_information.profile
    @profile_image = user_information.profile_image
    @current_user = current_user

    puts("")
    puts("user_page: "+@current_user)
    puts("")
    puts("user_id: "+@user_id)
    puts("")
  end
end
