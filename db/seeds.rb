# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports = %w[
    ATL ATX LAX HND DXB
    ORD LHR PVG HKG CDG
    DFW CAN ICN AMS FRA
    SIN BKK DEN DEL CGK
    JFK KUL MAD SFO CTU
    SZX MCO LAS BCN YYZ
  ]
  
  airports.each do |abbr|
  Airport.create( code: abbr, created_at: Time.now, updated_at: Time.now)
  end
  
  
  
  Airport.ids.each_slice(2).map do |ids|
      Flight.create( departure_id: ids.first[0], arrival_id: ids.first[1], date: rand(13.days).seconds.from_now, duration: rand(24.hours).to_i, created_at: Time.now, updated_at: Time.now )
  end
  