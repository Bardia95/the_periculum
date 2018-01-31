class PodcommentsController < ApplicationController
  def create
    @podcast = Podcast.find(params[:podcast_id])
    @podcomment = @podcast.podcomments.create(comment_params)
    redirect_to podcast_path(@podcast)
  end

  def destroy
    @podcast = Podcast.find(params[:podcast_id])
    @podcomment = @podcast.comments.find(params[:id])
    @podcomment.destroy
    redirect_to podcast_path(@podcast)
  end

  private
    def podcomment_params
      params.require(:podcomment).permit(:commenter, :body)
    end
end
