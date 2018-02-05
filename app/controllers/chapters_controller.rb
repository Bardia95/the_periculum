class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
    @questions = question.where(chapter_id: @chapter.id).order("created_at ASC")
  end

  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.new
  end

  def edit
    @chapter = Chapter.find(params[:id])
  end

  def create
    @chapter = Chapter.new(chapter_params)

    if @chapter.save
      render 'books/show'
    else
      render 'books/show'
    end
  end

  def update
    @chapter = Chapter.find(params[:id])

    if @chapter.update(chapter_params)
      redirect_to @chapter
    else
      render 'edit'
  end
end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy

    redirect_to chapters_path
  end

  private
    def chapter_params
      params.require(:chapter).permit(:title, :text)
    end
  end
