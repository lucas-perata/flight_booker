class Passenger < ApplicationRecord
    has_many :passengerbookings, dependent: :delete_all 
    has_many :bookings, through: :passengerbookings, inverse_of: :passengers 
    has_many :flights, through: :bookings
end
