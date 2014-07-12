# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Load Trips
Trip.create(name: 'Beers and Bars', description: 'Beers and Bars', start: '2014-09-09',  end: '2014-09-18 ', theme: 'Booze', region: 'USA' )
Trip.create(name: 'Healthy Farm Food', description: 'Local Produce and Dairy Farms', start: '2014-11-09',  end: '2014-11-19', theme: 'Organic', region: 'USA' )


#Load Components

Component.create(name: 'Big Pub', description: 'Big Pub', start: '2014-09-09 18:00:00', end: '2014-09-09 23:00:00' , lat: 40.645244, lon: -73.9449975, comments: 'Nice big place for beer')
Component.create(name: 'Small Pub', description: 'Small Pub', start:  '2014-09-09 23:30:00', end: '2014-09-10 01:00:00' , lat: 40.5789799, lon: -73.9610017, comments: 'Nice small place for beer')
Component.create(name: 'Big Farm', description: 'Big Farm ', start: '2014-10-09 18:00:00', end: '2014-10-09 23:30:00' , lat: 41.7510985, lon: -79.4617186, comments: 'Nice big place for food')
Component.create(name: 'Small Farm', description: 'Small Farm', start:  '2014-10-09 23:30:00', end: '2014-10-10 06:00:00' , lat: 41.4054655, lon: -80.3831525, comments: 'Nice small place for food')


#Load Trip_Components

Tripcomponent.create(trip_id: 1, component_id: 1)
Tripcomponent.create(trip_id: 1, component_id: 2)
Tripcomponent.create(trip_id: 2, component_id: 3)
Tripcomponent.create(trip_id: 2, component_id: 4)


