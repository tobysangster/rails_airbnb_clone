class BookingsController < ApplicationController

  before_action :authenticate_user!

  def new
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)
    @booking.equipment = @equipment
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @bookings = Booking.find(params[:id])
    @equipment = @bookings.equipment
  end


  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
