class PostsController < ApplicationController
  def index 
    @post = Post.new
    @posts = Post.order(:id)
  end

  def create 
    @post = Post.new(
      title: params[:post][:title]
    )
    @post.save 
    respond_to :js
  end

  def edit 
    @post = Post.find(params[:id])
    respond_to :js
  end

  def update 
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.save 
    respond_to :js
  end
end
