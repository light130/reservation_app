class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:confirmation, :create, :index, :show, :destroy]

  def new
    @reservations = Reservation.all
    @reserved_schedule_ids = @reservations.select("schedule_id")
    @schedule_available = Schedule.where.not(id: @reserved_schedule_ids)
  end

  def create
    @reservation = Reservation.new(schedule_id: params[:schedule_id], user_id: params[:user_id])
    if @reservation.save
      flash[:info] = ["予約を完了しました。"]
      redirect_to root_url
    else
      flash[:info] = ["予約を完了できませんでした。"]
      redirect_to root_url
    end
  end

  def index
    @reservations = Reservation.where(user_id: current_user.id)
    @reserved_schedule_ids = @reservations.select("schedule_id")
    @schedules = Schedule.where(id: @reserved_schedule_ids)
  end

  def show
    @schedule = Schedule.find(params[:id])
    @reservation = Reservation.find_by(schedule_id: @schedule.id)
  end

  def destroy
    Reservation.find(params[:id]).destroy
    flash[:info] = ["予約を取り消しました。"]
    redirect_to root_url
  end

  def confirmation
    @schedule = Schedule.find(params[:id])
    @reservation = Reservation.new(schedule_id: @schedule.id)
  end


end
