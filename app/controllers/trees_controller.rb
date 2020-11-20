class TreesController < ApplicationController

    def index
        @trees = Tree.all
        render json: @trees
    end

    # def index
    #     @trees = Tree.all
    #     render json: @trees
    # end
   
    def show
        @tree = Tree.find(params[:id])
        render json: @tree
    end
   
    def create
        @tree = Tree.create(name: params[:name], age: params[:age]) 
        render json: @tree
    end 

    def update
        @tree = Tree.find(params[:id])
        @tree.update(name: params[:name], age: params[:age])
        render json: @tree
    end 

    def destroy
        @tree = Tree.find(params[:id])
        @tree.destroy
        render json: "Tree #{@tree.id} has been terminated!"
    end

end
