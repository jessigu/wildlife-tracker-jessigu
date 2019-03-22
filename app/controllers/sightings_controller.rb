class SightingsController < ApplicationController
    
    def new
        animal = Animal.find(params[:animal_id])
        @sighting = animal.sightings.new
    end
    
    def create
        @sighting = Sighting.new(sighting_params)
        if @sighting.valid?
            @sighting.save
            redirect_to animal_path(@sighting.animal)
        else
            render action: :new       
        end
    end
       
    def edit
        @sighting = Sighting.find(params[:id])
    end
    
    def update
        @sighting = Sighting.find(params[:id])
        @sighting.update_attributes(sighting_params)
        redirect_to animal_path(@sighting.animal)
    end
    
    def destroy
        @sighting = Sighting.find(params[:id])
        @sighting.destroy
        redirect_to animal_path(@sighting.animal)
    end 
    
    private
    
    def sighting_params
        params.require(:sighting).permit(:animal_id, :date, :time, :latitude, :longitude, :region)
    end
end
