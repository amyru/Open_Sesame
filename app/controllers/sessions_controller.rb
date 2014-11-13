class SessionsController < ApplicationController
  def new
  end

  def create #capturing the password and matching it to the user.
  	@customer = customer.find_by(:email params[:email])

  end

  def destroy
  	session[:customer_id] = nill
  	redirect_to new_session_url
  end
end
