class PostsController < ApplicationController
  def new
    @post = Post.new
    gon.post = @post
  end

  private

  def post_params
    params.require(:post).permit(:address, :latitude, :longitude)
  end
end
