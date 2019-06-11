class StudiosController < ApplicationController

  def new
    @studio = Studio.new
  end

  def create
    @user = current_user
    @studio = Studio.new(studio_params)
    @studio.user = @user
    if @studio.save
      redirect_to dashbord_path(@dashbord)
    else
      render 'new'
    end
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :description, :address, :photo)
  end
end
