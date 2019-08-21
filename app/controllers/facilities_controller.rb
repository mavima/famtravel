class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
    @facilities = @facilities.joins(:city).where("cities.name ILIKE ?", params[:search][:keyword]) if params[:search][:keyword].present?
    @facilities = @facilities.joins(:category).where("categories.id = ?", params[:search][:category]) if params[:search][:category].present?
  end

  def show
    @facility = Facility.find(params[:id])
  end
end
