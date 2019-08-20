class CitiesController < ApplicationController
  def new
    @city = City.new
  end

  def create
    @city = City.new(city_strong_params)
    if @city.save
      redirect_to "city show page" # pending complete
    else
      render :new
    end
  end

  def city_strong_params
    params.require(:cities).permit(:name, :longitude, :latitude)
  end
end
