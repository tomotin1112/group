class TopController < ApplicationController
  def index
    if request.post?
      @keyword = params[:keyword]
    else
      follow_user=Follow.where(user_id:session[:user])
      @posts = Image.find_by_sql("select * from image")
    end
  end

end
