class Passengerbooking < ApplicationRecord
  belongs_to :passenger
  belongs_to :booking
end
