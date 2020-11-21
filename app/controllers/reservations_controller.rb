class ReservationsController < ApplicationController
  def index
    @studios = Studio.includes(:admin)
    @reservations = Reservation.all.order(time_from_id: 'ASC')
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
end
