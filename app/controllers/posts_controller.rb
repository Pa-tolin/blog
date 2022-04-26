class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def create
    @post = Post.create(
      title: params[:titulo],
      content: params[:contenido],
      image_url: params[:url_img])
   
    if @post.save
      redirect_to root_path
    end
  end
end

