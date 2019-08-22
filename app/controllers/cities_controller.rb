class CitiesController < ApplicationController
  def new
    @city = City.new
  end

  def create
    @city = City.new(city_strong_params)
    if @city.save
      redirect_to new_facility_path(@facilities)
    else
      render :new
    end
  end

  private

  def city_strong_params
    params.require(:city).permit(:name, :country_city)
  end
end
