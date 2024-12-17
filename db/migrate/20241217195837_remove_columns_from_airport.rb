class RemoveColumnsFromAirport < ActiveRecord::Migration[8.0]
  def change
    remove_column :airports, :departing_flights_id, :integer
    remove_column :airports, :arriving_flights_id, :integer
  end
end
