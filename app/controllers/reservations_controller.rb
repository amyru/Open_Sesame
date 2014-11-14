class ReservationsController < ApplicationController
	# before_filter :ensure_logged_in

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@reservation = @restaurant.reservations.build(reservation_params)
  	@reservation.customer = current_customer
  	if @reservation.save                
  		redirect_to restaurant_path(@restaurant)  #need to create a confirmation page and path or we just redirect to restaurant list and write a notice that the restervation has been saved
  	else
  		render "/restaurants/show"
  	end

  end

  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  end

  private
  def reservation_params
  	params.require(:reservation).permit(:reservation_time, :party_size)
  end
end
