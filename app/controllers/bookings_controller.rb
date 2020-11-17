class BookingsController < ApplicationController
  def new
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)
    @booking.equipment = @equipment
    if @booking.save
      redirect_to equipment_bookings_path(@equipment)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to equipment_booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to equipment_path(@booking.equipment)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :equipment_id)
  end
end
