class ReservationsController < ApplicationController

  def new
    @ = Reservation.all.schedule_id
    @schedules = Schedule.where(@)
  end

end
