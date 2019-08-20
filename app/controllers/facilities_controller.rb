class FacilitiesController < ApplicationController
  def index
    if params[:search][:keyword].present?
      @facilities = Facility.where("name ILIKE ?", "%#{params[:search][:keyword]}%")
    else
      @facilities = Facility.all
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end
end



