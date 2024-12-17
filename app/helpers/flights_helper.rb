module FlightsHelper
  def get_airport_code(airport_id)
    Airport.find_by(id: airport_id).code
  end
end
