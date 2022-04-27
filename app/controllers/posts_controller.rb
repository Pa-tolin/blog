class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def create
    @post = Post.create(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url])
  end
end

