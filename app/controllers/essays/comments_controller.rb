class Essays::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Essay.find(params[:essay_id])
    end
end
