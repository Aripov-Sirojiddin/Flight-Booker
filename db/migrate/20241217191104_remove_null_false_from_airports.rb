class RemoveNullFalseFromAirports < ActiveRecord::Migration[8.0]
  def change
    change_column_null :airports, :flights_id, true
  end
end
