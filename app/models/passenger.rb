class Passenger < ApplicationRecord
    belongs_to :booking, class_name: "booking", foreign_key: "booking_id"
end
