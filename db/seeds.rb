# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Location.destroy_all

factory = RGeo::Geographic.spherical_factory(srid: 4326)

Location.create!(
  name: 'Central Park',
  city: 'New York',
  state: 'NY',
  coordinates: factory.point(-73.965355, 40.782865) # longitude, latitude
)

Location.create!(
  name: 'Golden Gate Bridge',
  city: 'San Francisco',
  state: 'CA',
  coordinates: factory.point(-122.478255, 37.819929) # longitude, latitude
)

Location.create!(
  name: 'Willis Tower',
  city: 'Chicago',
  state: 'IL',
  coordinates: factory.point(-87.635924, 41.878876) # longitude, latitude
)

Location.create!(
  name: "Chipotle Van Buren", 
  city: 'Riverside',
  state: 'CA',
  coordinates: "POINT(-117.2733504 33.8884972)", 
)

location_2 = Location.create!(
  name: "Safeway 104th", 
  city: 'Thornton',
  state: 'CO',
  coordinates: factory.point(-104.9419577, 39.8836639)
)

Location.create!(
  name: "Carpenter Rec Center", 
  city: 'Thornton',
  state: 'CO',
  coordinates: factory.point(-104.9418577, 39.8966111)
)

Location.create!(
  name: "The Point", 
  city: 'Thornton',
  state: 'CO',
  coordinates: factory.point(-104.9350051, 39.9492963)
)