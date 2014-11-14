class Restaurant < ActiveRecord::Base

  has_many :reservations
  has_many :customers, through: :reservations

  scope :available_restaurants, -> where(Restaurant.available=true)

	def available?(party_size, start_time)
		reserved = reservations.where(:reservation_time => start_time).sum(:party_size)
		party_size <= (capacity - reserved)
	end
end







