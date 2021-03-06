class SessionsController < ApplicationController
  def new
  end

  def create #capturing the password and matching it to the user.
    # binding.pry
  	customer = Customer.find_by(email: params[:email])
  	if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to restaurants_url, notice: "Logged in!"
    else
      flash[:notice] = "Wrong password or user doesn't exist!"
      render "new"
    end
  end

  def destroy
  	session[:customer_id] = nil
  	redirect_to new_session_url
  end
end
