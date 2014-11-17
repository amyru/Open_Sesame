class ReservationsController < ApplicationController
	# before_filter :ensure_logged_in


  def show
  	if current_customer
      @reservation = Reservation.find(params[:id])
    else
      redirect_to root_path 
    end
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@reservation = @restaurant.reservations.build(reservation_params)
  	@reservation.customer = current_customer
  	if @reservation.save                
  		redirect_to customer_path(current_customer)  #need to create a confirmation page and path or we just redirect to restaurant list and write a notice that the restervation has been saved
  	else
  		render "restaurants/show"
  	end
  end

  def destroy
  	@reservation = current_customer.reservations.find(params[:id])
  	@reservation.destroy
    redirect_to customer_path(current_customer)
  end

  private
  def reservation_params
  	params.require(:reservation).permit(:reservation_time, :restaurant_id, :customer_id, :party_size)
  end
end
