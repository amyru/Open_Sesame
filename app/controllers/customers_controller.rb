class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save 
      session[:customer_id] = @customer.id
      redirect_to restaurant_url
    else
      render "new"
    end
  end

  def show
    @customer = Customer.find(current_customer.id)
  end

private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email_address, :password)
  end

end
