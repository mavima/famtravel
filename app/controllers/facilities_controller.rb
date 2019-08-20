class FacilitiesController < ApplicationController
  def index
    if params[:keyword].present?
      @facilities = Facility.joins(:city).where("cities.name ILIKE ?", "%#{params[:keyword]}%").where(facility_category_id: params[:facilities_category_id])
    else
      @facilities = Facility.all
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end
end


