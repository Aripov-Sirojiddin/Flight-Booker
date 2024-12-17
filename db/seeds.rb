# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
airport_codes = [
  "ATL", # Atlanta Hartsfield-Jackson International Airport
  "LAX", # Los Angeles International Airport
  "ORD", # Chicago O'Hare International Airport
  "DFW", # Dallas/Fort Worth International Airport
  "DEN", # Denver International Airport
  "JFK", # John F. Kennedy International Airport
  "SFO", # San Francisco International Airport
  "SEA", # Seattle-Tacoma International Airport
  "LAS", # Las Vegas McCarran International Airport
  "MIA", # Miami International Airport
  "PHX", # Phoenix Sky Harbor International Airport
  "IAH", # George Bush Intercontinental Airport (Houston)
  "CLT", # Charlotte Douglas International Airport
  "EWR", # Newark Liberty International Airport
  "BOS", # Boston Logan International Airport
  "MSP", # Minneapolis-Saint Paul International Airport
  "MCO", # Orlando International Airport
  "DTW", # Detroit Metropolitan Wayne County Airport
  "PHL", # Philadelphia International Airport
  "SLC"  # Salt Lake City International Airport
]

airport_codes.each do |code|
  Airport.create(code: code)
end

airport_codes.each_slice(2) do |departure_airport, arrivials_airport|
  Flight.create(
    departure_airport_id: Airport.find_by(code: departure_airport).id,
    arrival_airport_id: Airport.find_by(code: arrivials_airport).id,
    start: DateTime.now,
    finish: DateTime.now + 1 + (5.0 / 24) + (30.0 / (24 * 60)),
    duration: rand(2..13)
    )
end
