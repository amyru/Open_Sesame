# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
restaurants = Restaurant.create([{ name: "Tomoe Sushi"}, {phone_number: 4163432222}, {address: "100 Elizabeth Street"}, {capacity: 10}])

restaurants = Restaurant.create([{ name: "Hooters"}, {phone_number: 4163332222}, {address: "200 Queen Street"}, {capacity: 15}])

restaurants = Restaurant.create([{ name: "Ramen Noodle Place"}, {phone_number: 4163431111}, {address: "100 King Street"}, {capacity: 20}])
