class AddFlightsIdToAirport < ActiveRecord::Migration[8.0]
  def change
    add_reference :airports, :flights, null: false, foreign_key: true
  end
end
