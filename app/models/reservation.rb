class Reservation < ActiveRecord::Base
	
	belongs_to :customer
	belongs_to :restaurant

	def is_available
		return false
	end

end
