class Reservation < ActiveRecord::Base
	
	belongs_to :customer
	belongs_to :restaurant

	validate :availability

	private
  def availability
    unless restaurant.available?(party_size, reservation_time)
      errors.add(:base, "Restaurant is full")
    end
  end

end
