class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @restaurant = Restaurant.find(params[:id])
    @restaurants = Restaurant.all
    @hotels = Hotel.all
    @clubs = Club.all
  end
end
