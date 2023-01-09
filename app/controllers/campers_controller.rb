class CampersController < ApplicationController

    def index
        render json: Camper.all
    end

    def show
        
        camper = Camper.find_by(id: params[:id])
        render json: @camper.to_json(include: Camper.activities)

        # if camper
        #     render json: camper, include: :activities
        # else
        #     render json: { errors: ["validation error"]}, status: :not_found
        # end
    end

    def create
        camper = Camper.create(name: params[:name], age: params[:age])
        render json: camper
    end
end

