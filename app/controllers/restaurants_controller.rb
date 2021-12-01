class RestaurantsController < ApplicationController
  before_action :find_city
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = @city.restaurants
  end

  def show; end

  private

  def find_city
    @city = City.find(params[:city_id])
  end

  def set_restaurant
    @restaurant = @city.restaurants.find(params[:id])
  end
end
