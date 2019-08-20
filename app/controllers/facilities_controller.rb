class FacilitiesController < ApplicationController
  def index
    if params[:keyword].present?
      @facilities = Facility.joins(:city).where("cities.name ILIKE ?", "%#{params[:keyword]}%").where(category_id: params[:category_id])
    else
      @facilities = Facility.all
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end
end


