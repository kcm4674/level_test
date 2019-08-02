class CommentsController < ApplicationController
  def create
    ## [비동기 댓글 설명] 댓글이 작성되면 id값이 부여됩니다.
    ## 해당 id값은 댓글이 DB에 쓰여진 후, 비동기 상에서 보여줘야할 때 쓰입니다.
    @comment = Comment.create(post_id: params[:post_id], body: params[:co_body])
    
    # redirect_to posts_show_path(params[:post_id])
    respond_to do |t|
      t.js
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    # redirect_to posts_show_path(params[:post_id])
    respond_to do |t|
      t.js
    end
  end
end
