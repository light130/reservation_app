class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:confirmation, :create]

  def new
    @reservation = Reservation.all
    @reserved_schedule_ids = @reservation.select("schedule_id")
    @schedule_available = Schedule.where.not(id: @reserved_schedule_ids)
  end

  def create
    @reservation = Reservation.new(schedule_id: params[:schedule_id], user_id: params[:user_id])
    if @reservation.save
      redirect_to root_url
    else
      flash[:errors] = ["予約を完了できませんでした。"]
      redirect_to root_url
    end
  end

  def index
  end

  def confirmation
    @schedule = Schedule.find(params[:id])
    @reservation = Reservation.new(schedule_id: @schedule.id)
  end


end
