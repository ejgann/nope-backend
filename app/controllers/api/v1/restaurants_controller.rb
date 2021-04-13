class Api::V1::RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    private

    def restaurant_params
        require.params(:restaurant).permit(:name, :phone, :street, :city, :state, :zip, :category_id)
    end

end
