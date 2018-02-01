class PagesController < ApplicationController
  def home
  end

  def about
  end

  def bookclub
  end

  def podcast
  end

  def showbook
    @book = Book.Latest
    @book.bookcover
  end
end
