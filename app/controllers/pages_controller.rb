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
  end
end
