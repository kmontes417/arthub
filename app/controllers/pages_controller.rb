# This is the dashboard
class PagesController < ApplicationController
  def home
    if current_user
      @bookings = current_user.bookings.all
      @studios = current_user.studios.all
    end
  end
end
