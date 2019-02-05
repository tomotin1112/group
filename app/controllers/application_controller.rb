class ApplicationController < ActionController::Base
  def current_user
    @current = session[:user]
  end
end
