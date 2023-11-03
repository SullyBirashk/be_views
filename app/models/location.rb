class Location < ApplicationRecord


 # Using RGeo to create a factory for geographic calculations
 RADIUS_OF_EARTH_IN_METERS = 6371000

 # This method returns all locations within a 50 mile radius of the given coordinates
 def self.nearby_locations(latitude, longitude, distance_in_miles = 50)
   # Convert miles to meters
   distance_in_meters = distance_in_miles * 1609.34

   # Find locations within the specified distance
   where("ST_DWithin(coordinates, ST_MakePoint(:lon, :lat)::geography, :distance)",
         lat: latitude, lon: longitude, distance: distance_in_meters)
 end


end
