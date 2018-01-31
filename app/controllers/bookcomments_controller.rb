class BookcommentsController < ApplicationController

  def create
    @section = Essay.find(params[:section_id])
    @bookcomment = @section.bookcomments.create(bookcomment_params)
    redirect_to section_path(@section)
  end

  def destroy
    @section = Essay.find(params[:section_id])
    @bookcomment = @section.bookcomments.find(params[:id])
    @bookcomment.destroy
    redirect_to section_path(@section)
  end

  private
    def bookcomment_params
      params.require(:bookcomment).permit(:commenter, :body)
    end
end
