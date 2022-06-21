class BookingsController < ApplicationController

    def new 
        @booking = Booking.new 
        # params[:passengers].to_i.times {@booking.passengers.build}
        params[:passengers].to_i.times {@booking.passengers.build}
        @flight = Flight.find(params[:flight_id])
        render :new
    end 

    def create 
        @booking = Booking.new(booking_params)
        

        if @booking.save 
            flash.notice ="Vuelo reservado"
            redirect_to @booking
        else 
            redirect_to new_flight_path
        end  
    end 

    def show 

        @booking = Booking.find(params[:id])

        @n = 1
    end 

    def edit 
        @booking = Booking.find(params[:id])
        
    end 

    private 

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end 

end 