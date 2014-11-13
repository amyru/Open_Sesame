class SessionsController < ApplicationController
  def new
  end

  def create #capturing the password and matching it to the user.
  	@customer = Customer.find_by(email: params[:email])
  	if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to restaurants_url, notice: "Logged in!"
    else
      render "new"
    end
  end

  def destroy
  	session[:customer_id] = nill
  	redirect_to new_session_url
  end
end
