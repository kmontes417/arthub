class ReviewsController < ApplicationController
  def create
    @studio = studio.find(params[:studio_id])
    @review = Review.new(review_params)
    @review.studio = @studio
    if @review.save
      redirect_to studio_path(@studio)
    else
      @booking = Booking.new
      render "studios/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
