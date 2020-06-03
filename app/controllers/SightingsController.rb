class SightingsController < ApplicationController

    def index
        sightings = Sighting.all
        render json: sightings
      end
    
      def show
        sighting = Sighting.find(params[:id])
        render json: sighting
      end
    
    def create
        sighting = Sighting.create (sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
      end
    
      private
      def sighting_params
        params.require(:sighting).permit(:animal_id, :date, :latitude, :longtitude)
      end
end
