class ReservationsController < ApplicationController
	before_filter :ensure_loged_in

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
  	@reservation = @restaurant.reservation.build(reservation_params)
  	@reservation.customer = current_customer
  	if @reservation.save                
  		redirect_to confirmation_path  #need to create a confirmation page and path or we just redirect to restaurant list and write a notice that the restervation has been saved
  	else
  		render "restaurants"
  	end
  end

  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  end

  private
  def reservation_params
  	params.require(:reservation).permit(:reservation_time, :restaurant_id, :customer_id, :party_size)
  end
end
