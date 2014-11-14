require 'rails_helper'

describe Reservation do

	describe "#is_available" do

		it "should be true" do
			reservation = Reservation.new
			expect(reservation.is_available).to eq(true)
		end
		
	end

end