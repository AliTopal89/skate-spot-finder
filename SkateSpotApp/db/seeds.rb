# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Spot.destroy_all

spots = Spot.create([
	{city:'Washington DC', address:'1096 Potomac Ave NW', description:'quarter pipes by Georgetown'}
	])