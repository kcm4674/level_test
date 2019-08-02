class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    Post.create(title: params[:crud_title], content: params[:crud_content])
    
    # @post.title = params[:crud_title]
    # @post.content = params[:crud_content])
    # @post.save
    
    redirect_to posts_index_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:crud_title], content: params[:crud_content])
    
    # @post.title = params[:crud_title]
    # @post.content = params[:crud_content])
    # @post.update
    
    redirect_to posts_show_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to posts_index_path
  end
end
