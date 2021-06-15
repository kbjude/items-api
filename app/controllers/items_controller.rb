class ItemsController < ApplicationController
    def index
        @items = Item.all 
        render json: @items
    end 

    def show
        @item = Item.find(params[:id])
        render json: @item
    end 

    def create
        @item = Item.create(
            name: params[:name],
            description: params[:description]
        )
        render json: @secretMenuItem
    end 

    def update
        @item = Item.find(params[:id])
        @item.update(
            name: params[:name],
            description: params[:description]
        )
        render json: @item
    end 

    def destroy
        @items = Item.all 
        @item = Item.find(params[:id])
        @item.destroy
        render json: @items
    end 
end
