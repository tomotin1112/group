class TopController < ApplicationController
  def index
  if request.post?
    @keyword=params[:keyword]
  end
  end

  #def search
  #  @keyword = params[:keyword]
  #  render "index"
  #end
end
