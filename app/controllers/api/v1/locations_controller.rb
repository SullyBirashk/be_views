require 'pry'

class Api::V1::LocationsController < ApplicationController
    before_action :set_location, only: [:show, :update, :destroy]



    def nearby
        # Geocode the location to get latitude and longitude
        coordinates = Geocoder.coordinates(params[:location])
        
        # binding.pry

        if coordinates
          latitude, longitude = coordinates
          @nearby_locations = Location.nearby_locations(latitude, longitude)
          render json: @nearby_locations
        else
          render json: { error: "Could not geocode the provided location." }, status: :unprocessable_entity
        end
      end




    # GET /api/v1/locations
    def index
      @locations = Location.all
      render json: @locations
    end

    # GET /api/v1/locations/1
    def show
      render json: @location
    end

    # POST /api/v1/locations
    def create
      @location = Location.new(location_params)

      if @location.save
        render json: @location, status: :created, location: api_v1_location_url(@location)
      else
        render json: @location.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /api/v1/locations/1
    def update
      if @location.update(location_params)
        render json: @location
      else
        render json: @location.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/v1/locations/1
    def destroy
      @location.destroy
      head :no_content
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_location
        @location = Location.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def location_params
        params.require(:location).permit(:name, :city, :state, :coordinates)
      end
  end