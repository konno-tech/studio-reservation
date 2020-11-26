class UsersController < ApplicationController
  def show
    @reservations = Reservation.where(user_id: current_user.id).order(date: 'DESC')
    @reservations.each do |reservation|
      reservation.time_to_id += 1
    end
  end
end
