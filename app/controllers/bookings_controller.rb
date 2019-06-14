class BookingsController < ApplicationController
  def show
  end

  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.studio_id = params[:studio_id]
    @booking.user = current_user
    @booking.checkin = booking_params[:checkin].split.first
    @booking.checkout = booking_params[:checkin].split.last
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
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
    @booking = Booking.find params[:id]
    @booking.destroy
    redirect_to dashboard_path
  end

  def cancel
    @booking = Booking.find params[:id]
    @booking.status = "cancelled"
    @booking.save
    redirect_to dashboard_path
  end

  def confirm
    @booking = Booking.find params[:id]
    @booking.status = "confirmed"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin)
  end
end
