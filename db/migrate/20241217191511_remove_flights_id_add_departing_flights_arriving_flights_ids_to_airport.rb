class RemoveFlightsIdAddDepartingFlightsArrivingFlightsIdsToAirport < ActiveRecord::Migration[8.0]
  def change
    remove_index :airport, name: "index_airports_on_flights_id"
  end
end
