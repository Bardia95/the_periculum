class QuestionsController < ApplicationController
  before_action :set_chapter

  def show
    @question = @chapter.questions.find(params[:id])
  end

  def index
    @questions = @chapter.questions.all
  end

  def new
    @question = @chapter.questions.new
  end

  def edit
    @question = @chapter.questions.find(params[:id])
  end

  def create
    @question =  @chapter.questions.new(question_params)
    if @question.save
      redirect_to book_chapter_path(@chapter.book, @chapter)
    else
      render 'new'
    end
  end

  def update
    @question = @chapter.questions.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
    render 'edit'
  end
end

  def destroy
    @question = @chapter.questions.find(params[:id])
    @question.destroy

    redirect_back(fallback_location: root_path)
  end

  private
    def question_params
      params.require(:question).permit(:title)
    end
    def set_chapter
      @chapter = Chapter.find_by(id: params[:chapter_id])
      if @chapter.nil?
        redirect_to books_path
      end
    end
  end
