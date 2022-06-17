class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengerbookings, dependent: :delete_all 
  has_many :passengers, through: :passengerbookings, inverse_of: :bookings
  
  accepts_nested_attributes_for :passengers
end
