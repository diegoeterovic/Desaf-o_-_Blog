class PostsController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def create
    @post = Post.create(title: params[:title], picture: params[:picture], content: params[:content])
  end

  def dashboard
  end

  def index
    @posts = Post.all.order_desc
  end
end
