class ReservationsController < ApplicationController
  def index
    @studios = Studio.includes(:admin)
    @reservations = Reservation.all.order(time_from_id: 'ASC')
    @reservations.each do |reservation|
      reservation.time_to_id += 1
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservation.time_to_id += 1
  end
end
