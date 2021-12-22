class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @restaurant = @city.restaurants
    @restaurants = Restaurant.where(city_id: @city)
    @hotels = Hotel.where(city_id: @city)
    @clubs = Club.where(city_id: @city)
  end
end
