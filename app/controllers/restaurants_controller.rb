class RestaurantsController < ApplicationController
  # before_action :find_city
  # before_action :set_restaurant, only: [:show]

  def index
    @restaurants = @city.restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # def find_city
  #   @city = City.find(params[:id])
  # end

  # def set_restaurant
  #   @restaurant = @city.restaurants.find(params[:id])
  # end
end
