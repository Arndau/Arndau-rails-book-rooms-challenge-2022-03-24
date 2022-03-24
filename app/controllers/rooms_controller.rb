class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

# def create
#   @room = Room.new(room_params)
#   @room.save
#   redirect_to rooms_path(@room)
# end


  def show
    @room= Room.find(params[:id])
  end

  private

  def room_params
    params.require(:room).permit( :updated_at, :created_at, :capacity, :price_per_night, :hotel_id)
  end

end
