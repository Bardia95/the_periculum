class ChaptersController < ApplicationController
    before_action :set_book
  def show
    @chapter = @book.chapters.find(params[:id])
    @questions = @chapter.questions.where(chapter_id: @chapter.id).order("created_at ASC")
  end

  def index
    @chapters = Chapter.where(book_id: @book.id).order("updated_at ASC")
  end


  def new
    @chapter = @book.chapters.new
  end

  def edit
    @chapter = @book.chapters.find(params[:id])
  end

  def create
    @chapter = @book.chapters.new(chapter_params)

    if @chapter.save
      render 'books/show'
    else
      render 'books/show'
    end
  end

  def update
    @chapter = @book.chapters.find(params[:id])

    if @chapter.update(chapter_params)
      redirect_to @chapter
    else
      render 'edit'
  end
end

  def destroy
    @chapter = @book.chapters.find(params[:id])
    @chapter.destroy
    redirect_back(fallback_location: root_path)
  end

  private
    def chapter_params
      params.require(:chapter).permit(:title, :text)
    end
    def set_book
      @book = Book.find_by(id: params[:book_id])
      if @book.nil?
        redirect_to books_path
      end
    end
  end
