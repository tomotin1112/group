module Common
  def current_user
    @current = session[:user]
  end
end