class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    # I think the problem comes from here
    @city = City.find(params[:id])
    @restaurants = Restaurant.all
    @hotels = Hotel.all
    @clubs = Club.all
  end
end
