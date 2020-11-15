class StudiosController < ApplicationController
  before_action :set_studio, only: [:edit, :update]

  def new
    if admin_signed_in?
      @studio = Studio.new
    else
      redirect_to root_path
    end
  end

  def create
    if admin_signed_in?
      @studio = Studio.new(studio_params)
      if @studio.save
        redirect_to root_path
      else
        render :new
      end
    else
      redirect_to root_path
    end
  end

  def edit
    if admin_signed_in?
    else
      redirect_to root_path
    end
  end

  def update
    if admin_signed_in?
      if @studio.update(studio_params)
        redirect_to root_path
      else
        render :edit
      end
    end
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def studio_params
    params.require(:studio).permit(:name, :price).merge(admin_id: current_admin.id)
  end
end
