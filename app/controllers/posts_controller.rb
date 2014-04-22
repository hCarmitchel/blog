class PostsController < ApplicationController
  def index
    @posts = Post.order('title')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(title: DateTime.now.strftime("%A, %B %d, %Y"))
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to action: 'index'
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
