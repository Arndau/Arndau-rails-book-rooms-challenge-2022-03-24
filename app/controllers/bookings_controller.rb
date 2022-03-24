class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    #redirect_to rooms_path(@room)
  end

  private

  def booking_params
    params.require(:booking).permit( :sarts_at, :ends_at, :room_id, :user_id)
  end

end
