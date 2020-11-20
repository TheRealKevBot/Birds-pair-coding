class BirdsController < ApplicationController
    
    def index
        @birds = Bird.all
        render json: @birds
    end
   
    def show
        @bird = Bird.find(params[:id])
        render json: @bird
    end
   
    def create
        @bird = Bird.create(name: params[:name], species: params[:species]) 
        render json: @bird
    end 

    def update
        @bird = Bird.find(params[:id])
        @bird.update(name: params[:name], species: params[:species])
        render json: @bird
    end 

    def destroy
        @bird = Bird.find(params[:id])
        @bird.destroy
        render json: "Bird #{@bird.id} has been terminated!"
    end

end
