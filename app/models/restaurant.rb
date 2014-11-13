class Restaurant < ActiveRecord::Base
has_many :reservations
<<<<<<< HEAD


=======
has_many :customers, through: :reservations
>>>>>>> 47d3b9526b9c10b390e7bb2524c3b525bda036e2
end
