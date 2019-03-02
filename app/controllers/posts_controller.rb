class PostsController < ApplicationController
  def index 
    @post = Post.new
    @posts = Post.all
  end

  def create 
    @post = Post.new(
      title: params[:post][:title]
    )
    @post.save 
    respond_to :js
  end
end
