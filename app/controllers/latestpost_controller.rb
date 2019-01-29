class LatestpostController < ApplicationController
  def index
    if request.post?
      @keyword = params[:keyword]
    else
      @posts = Image.find_by_sql(["select i.post_id,
      p.title,count(*) as count,m.account_name,p.user_id from image i
      inner join post p on i.user_id = p.user_id and i.post_id = p.post_id
      inner join member m on p.user_id = m.user_id
      group by p.user_id,p.post_id
      order by date desc;
      "])
    end
  end

end