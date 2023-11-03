# config/initializers/geocoder.rb

Geocoder.configure(
  # Geocoding options
  timeout: 3,                 # geocoding service timeout (secs)
  lookup: :nominatim,         # name of geocoding service (symbol)
  # For API keys and other service-specific settings, refer to the Geocoder documentation
  units: :mi,                 # :km for kilometers or :mi for miles
  # ... other configuration options
)
