class SponsoredPostsController < ApplicationController
  def show
    @sponsored_post = SponsoredPost.find(params[:id])
      render :show
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = SponsoredPost.new
    render :new
  end

  def edit
    @sponsoredpost = SponsoredPost.find(params[:id])
    
  end
end
