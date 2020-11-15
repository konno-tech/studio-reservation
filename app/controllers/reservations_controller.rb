class ReservationsController < ApplicationController
  def index
    @studios = Studio.includes(:admin)
  end
end
