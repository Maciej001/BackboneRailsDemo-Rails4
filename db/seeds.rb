# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {first_name: "Paul", last_name: "McCartney", is_admin: true},
  {first_name: "John", last_name: "Lennon", is_admin: false},
  {first_name: "Ringo", last_name: "Starr", is_admin: true},
  {first_name: "George", last_name: "Harrison", is_admin: false}
])
