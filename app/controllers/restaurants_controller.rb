# restaurants_controller.rb
class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      render json: @restaurants, each_serializer: RestaurantSerializer
    end
  
    def show
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        render json: restaurant, include: { pizzas: { only: [:id, :name, :ingredients] } }
      else
        render json: { error: "can not be accessed" }, status: :not_found
      end
    end

    def create
      restaurant = Restaurant.find_by(id: params[:id])
      render json: restaurant, status::created
    end
  
    def destroy
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        restaurant.restaurant_pizzas.destroy_all
        restaurant.destroy
        head :no_content
      else
        render json: { error: "can not be accessed" }, status: :not_found
      end
    end
  end