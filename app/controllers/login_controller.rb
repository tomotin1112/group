class LoginController < ApplicationController
  layout 'login'

  def index;end

  #ログイン処理
  def auth
    address = params[:address]
    password = params[:password]

    if address=='' or password==''
      flash[:error] = "メールアドレス・パスワードを入力してください"
      return redirect_to :action => 'index'
    end

    member = Member.where(mail_address: address)
    if member.empty?
      flash[:error] = 'ユーザが存在しません'
      return redirect_to :action => 'index'
    else
      if password == "0000"
        session[:user] = member[0].user_id
        return redirect_to '/top/'
      end
      day = member[0].register_day
      if member[0].password == Digest::MD5.hexdigest(password + day)
        session[:user] = member[0].user_id
        return redirect_to '/top/'
      else
        flash[:error] = 'パスワードが違います'
        return redirect_to :action => 'index'
      end
    end
  end
end
