class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to root_path
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:s_comment, :t_comment, :h_comment, :y_comment).merge(room_id: params[:room_id])
  end

end
