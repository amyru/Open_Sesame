class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save 
      flash[:notice] = "Signed up"
      session[:customer_id] = @customer.id
      redirect_to restaurants_url
    else
      flash.now[:alert] = "oh, something bad happened."
      render "new"
    end
  end

  def show
  end

private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
