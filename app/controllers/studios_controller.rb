class StudiosController < ApplicationController

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

  private

  def studio_params
    params.require(:studio).permit(:name, :price).merge(admin_id: current_admin.id)
  end
end
