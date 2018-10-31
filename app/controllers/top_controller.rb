class TopController < ApplicationController
  def index
    if request.post?
      @keyword=params[:keyword]
    end
  end

end
