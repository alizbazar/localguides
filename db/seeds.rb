# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{name: 'Emanuel', tel: 0444444444}])
   User.create(name: 'Anders', tel: 0455555555)
   Attraction.create [{:name => 'Amusement Park', :longitude => 75.55, :latitude => 24.65},
{:name => 'Beach', :longitude => 76.333, :latitude => 24.65}]
Tour.create(guide: User.find_by_name("Emanuel"), tourist:  User.find_by_name("Anders"), attractions: [Attraction.find_by_name('Amusement Park')], start_time: DateTime.new, end_time: DateTime.new+3600)
Tour.create(guide: User.find_by_name("Anders"), tourist:  User.find_by_name("Emanuel"), attractions: [Attraction.find_by_name('Beach')])
