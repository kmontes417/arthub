class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to studio_path(@booking.studio)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
