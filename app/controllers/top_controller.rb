class TopController < ApplicationController
  def index
    if request.post?
      @keyword = params[:keyword]
    else
      #@posts = Image.joins(:follow).where(follow_user: session[:user])
      @posts = Image.find_by_sql(["select f.user_id,f.target_id,i.post_id,
      i.image_id,i.image_url,count(*) as count from follow f,Image i
      where f.target_id=i.user_id and f.user_id=?
      group by target_id,post_id", session[:user]])
    end
  end

end
