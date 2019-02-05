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

    current_user
  end

  def post
    if request.post?
      user = session[:user]
      post = Post.where(user_id: user)
      count = post.count()

      puts(user)
      puts(count)
      puts(params["title"])
      puts(Date.current.strftime("%Y-%m-%d"))
      puts(0)

      @test = Post.create(user_id: user, post_id: count, title: params["title"], date: Date.current.strftime("%Y-%m-%d"), bat_count: 0)
      Image.create(user_id: user, post_id: count, image_id: "0", image_url: user + "/" + count.to_s + "/0.jpg",s_genru_id: "0", good_count: "0")
      logger.debug @test.errors.inspect
      File.binwrite("public/images/posts/#{user}/#{count.to_s}/0.jpg", params[:image].read)
      return redirect_to :controller => 'top', :action => 'index'
    end
  end
end