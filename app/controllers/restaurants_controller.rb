class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @city = City.find(params[:city_id])
    @restaurant = Restaurant.find(params[:id])
    @restaurant.city = @city
  end
end
