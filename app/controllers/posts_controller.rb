class PostsController < ApplicationController
  def new
    @post = Post.new
    gon.post = @post
  end

  def distance
    @distance = params[:distance]
    @duration = params[:duration]
  end

  def route
    @route = params[:route]
  end

  private

  def post_params
    params.require(:post).permit(:address, :latitude, :longitude)
  end
end
