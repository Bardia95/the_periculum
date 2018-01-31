class CommentsController < ApplicationController

  def create
    @essay = Essay.find(params[:essay_id])
    @comment = @essay.comments.create(comment_params)
    redirect_to essay_path(@essay)
  end

  def destroy
    @essay = Essay.find(params[:essay_id])
    @comment = @essay.comments.find(params[:id])
    @comment.destroy
    redirect_to essay_path(@essay)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
