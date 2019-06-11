class BookingsController < ApplicationController
  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
  end

  def create
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
  end
end
