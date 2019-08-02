class CommentsController < ApplicationController
  def create
    Comment.create(post_id: params[:post_id], body: params[:co_body])
    
    redirect_to posts_show_path(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to posts_show_path(params[:post_id])
  end
end
