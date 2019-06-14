# This is the dashboard
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @studios = Studio.all
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @studios = @user.studios
    @user_studio_bookings = []
    @studios.each do |studio|
      studio.bookings.each do |booking|
        @user_studio_bookings << booking
      end
    end
  end
end
