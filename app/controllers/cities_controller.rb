class CitiesController < ApplicationController
  def new
    @city = City.new
    authorize @city
  end

  def create
    @city = City.new(city_strong_params)
    if @city.save
      redirect_to new_facility_path(@facilities)
    else
      render :new
    end
    authorize @city
  end

  private

  def city_strong_params
    params.require(:city).permit(:name, :country_city)
  end
end
