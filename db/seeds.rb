# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Fill this in for your dealer
Customer.create(name: "Dealer Name",
               address: "Your Street Addr",
               city: "Your City",
               state: "Your State")
