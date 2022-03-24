class BookingsController < ApplicationController

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = @room
    @booking.save
    if @booking.save
      redirect_to room_path(@room), notice: "Your booking is confirmed ✅"
    else
      redirect_to room_path(@room), notice: "sorry, booking ailed ❌"
    # @booking = Booking.new(booking_params)
    # @booking.save
    #redirect_to rooms_path(@room)
  end
end

  private

  def booking_params
    params.require(:booking).permit( :sarts_at, :ends_at, :room_id, :user_id)
  end

end
