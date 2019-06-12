class StudiosController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @studios = Studio.where.not(latitude: nil, longitude: nil)

    @markers = @studios.map do |studio|
      {
        lat: studio.latitude,
        lng: studio.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { studio: studio })

      }
    end

    if params["search"].present?
      @studios = Studio.where("category LIKE ? AND city LIKE ?","%#{params[:search][:category].downcase}%","%#{params[:search][:city].downcase}%")

    else
    @studios = Studio.all
    end

  end

  def show
    @studio = Studio.find params[:id]
  end

  def new
    @studio = Studio.new
  end

  def create
    @user = current_user
    @studio = Studio.new(studio_params)
    @studio.user = @user
    if @studio.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def edit
    @studio = Studio.find(params[:id])
  end

  def update
    @studio = Studio.find(params[:id])
    @studio.update(studio_params)
    redirect_to studio_path(@studio)
  end

  def destroy
    @studio = Studio.find params[:id]
    @studio.destroy
    redirect_to dashboard_path
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :description, :address, :photo, :price)
  end
end
