class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
  end

  private
  def restaurant_params
  	params.require(:restaurant).permit(:name, :phone_number, :address, :address, :capacity)
  end
end
