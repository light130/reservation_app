class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @reservations = Reservation.all
    @reserved_schedule_ids = @reservations.select('schedule_id')
    @schedule_available = Schedule.where.not(id: @reserved_schedule_ids).where('start > ?', Time.zone.now)
  end

  def create
    @reservation = Reservation.new(schedule_id: params[:schedule_id], user_id: params[:user_id])
    if @reservation.save
      flash[:info] = ['予約を完了しました。']
      redirect_to root_path
    else
      render new_reservation_path
    end
  end

  def index
    @reservations = Reservation.where(user_id: current_user.id)
    @reserved_schedule_ids = @reservations.select('schedule_id')
    @schedules = Schedule.where(id: @reserved_schedule_ids).where('close > ?', Time.zone.now)
  end

  def show
    @schedule = Schedule.find(params[:id])
    @reservation = Reservation.find_by(schedule_id: @schedule.id)
  end

  def destroy
    Reservation.find(params[:id]).destroy
    flash[:info] = ['予約を取り消しました。']
    redirect_to root_path
  end

  def confirmation
    @schedule = Schedule.find(params[:id])
    @reservation = Reservation.new(schedule_id: @schedule.id)
  end
end
