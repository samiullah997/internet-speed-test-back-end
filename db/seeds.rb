# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
place=Place.create(name: "The White House", city: "Washington, DC", address: "1600 Pennsylvania Ave NW, Washington, DC 20500")
InternetSpeed.create(place: place, download_speed: 100, download_units: "Mbps")
