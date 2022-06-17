class BookingsController < ApplicationController

    def new 
        @booking = Booking.new 
        # params[:passengers].to_i.times {@booking.passengers.build}
        params[:passengers].to_i.times {@booking.passengers.build}
        @flight = Flight.find(params[:flight_id])
        render :new
    end 

end 