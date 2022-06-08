class FlightsController < ApplicationController 

    def index
      @flights = Flight.all
      @airport_options = Airport.all.map {|a| [a.code, a.id]}

      @available_flight = Flight.where(arrival_airport_id: params[:arrival_airport_id], departure_airport_id: params[:departure_airport_id])
    end 

    def show 
      @flight = Flight.find(params[:id])
    end 

    def new 
      @flight = Flight.new
      @airport_options = Airport.all.map {|a| [a.code, a.id]}
    end 

    def create 
      @flight = Flight.new(flight_params)
      @airport_options = Airport.all.map {|a| [a.code, a.id]}
      respond_to do |format|
        if @flight.save
        format.html { redirect_to flight_path(@flight), notice: "Flight was successfully created." }
      else 
         format.html { render :new, status: :unprocessable_entity }
      end 
    end 

    end 

    private 
    
    def flight_params 
      params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :scheduled_on, :duration, :commit, :authenticity_token)
    end 

end 