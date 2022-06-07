class FlightsController < ApplicationController 

    def index
      @flights = Flight.all
      @airport_options = Airport.all.map {|a| [a.code, a.id]}

      @available_flight = Flight.where(arrival_airport_id: params[:arrival_airport_id])
    end 
 

end 