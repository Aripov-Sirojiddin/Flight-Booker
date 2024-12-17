class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    if (params[:departure_airport].present? && params[:arrival_airport].present?)
      @flights = @flights.where(
        departure_airport_id: Airport.find_by(code: params[:departure_airport].strip),
        arrival_airport_id: Airport.find_by(code: params[:arrival_airport].strip),
        )
    end
  end
end
