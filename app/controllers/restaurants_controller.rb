class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
    @reservation = Reservation.create

  end

  def show
  	@restaurant = Restaurant.find(params[:id])

  end

  private
  def restaurant_params
  	params.require(:restaurant).permit(:name, :phone_number, :address, :address, :capacity)
  end
end
