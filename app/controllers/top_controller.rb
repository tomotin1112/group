class TopController < ApplicationController
  def index
    if request.post?
      @keyword = params[:keyword]
    else
      @posts = Image.find_by_sql(["select f.target_id,i.post_id,
      p.title,count(*) as count,m.account_name from follow f
      inner join image i on f.user_id=?
      and f.target_id=i.user_id
      inner join member m on f.target_id=m.user_id
      inner join post p on i.user_id=p.user_id
      and i.post_id=p.post_id
      group by target_id,post_id", session[:user]])
    end
  end

end
