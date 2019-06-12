class ReviewsController < ApplicationController
  def create
    @booking = booking.find(params[:studio_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to studio_path(@booking.studio)
    else
      render :new
    end
  end

  def new
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
