class AddDepartingArrivingForeignKeysToAirport < ActiveRecord::Migration[8.0]
  def change
    add_column :airports, :departing_flights_id, :integer
    add_column :airports, :arriving_flights_id, :integer
    add_foreign_key :airports, :flights, column: :departing_flights_id
    add_foreign_key :airports, :flights, column: :arriving_flights_id
  end
end
