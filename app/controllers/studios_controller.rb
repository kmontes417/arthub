class StudiosController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @studios = Studio.all
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
    if @studio.update(studio_params)
      redirect_to studio_path(@studio)
    else
      render :edit
    end
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :description, :address, :photo)
  end
end
