class CustomersController < ApplicationController
  def index
  	@customers = Restaurant.all
  end

  def show
  	@customer = Customer.find(params[:id])
  end

  private
  def customer_params
  	params.require(:customer).permit(:first_name, :last_name, :email_address, :password)
  end
end