class PlantController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        plant = Plant.find_by(id: params[:id])

        render json: plant
    end


    def create
        plant = Plant.create!(plant_params)

        render json: plant , status: :created

    end

    private

    def plant_params
        params.require(:plant).permit(name: params[:name], image: params[:image], price: params[:price])
    end
end
