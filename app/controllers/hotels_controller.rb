class HotelsController < ApplicationController

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.save
    #redirect_to rooms_path(@room)
  end

  private

  def hotel_params
    params.require(:hotel).permit( :name, :address)
  end

end
