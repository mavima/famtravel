class FacilitiesController < ApplicationController
  def index
    if params[:search][:keyword] == ""
      flash[:notice] = "Please put a location"
      redirect_to root_path
      return
    end
    @facilities = Facility.all

    @facilities = @facilities.joins(:city).where("cities.name ILIKE ?", params[:search][:keyword])
    @facilities = @facilities.joins(:category).where("categories.id = ?", params[:search][:category_id]) if params[:search][:category_id].present?

  end

  def new
    @facility = Facility.new
    set_cats_and_feats
  end

  def create
    @facility = Facility.new(facility_params)
    set_cats_and_feats
    @facility.user_id = current_user.id
    @facility.category_id = params[:category_id]
    if @facility.save
      redirect_to root_path
        params[:facility][:feature_ids].each do |feat_id|
          FeatureFacility.create(feature_id: feat_id, facility_id: @facility.id)
        end
    else
      render :new
    end
  end


  def show
    @facility = Facility.find(params[:id])
    @features = @facility.features

  end

  def facility_params
    params.require(:facility).permit(:city_id, :name, :address, :rating, :photo, :website_link, :latitude, :longitude)
  end

  def set_cats_and_feats
    @cities = City.all
    @category = Category.find(params[:category_id])
    @feature_categories = FeatureCategory.where(category_id: @category.id)
    @features = @feature_categories.map do |fc|
      fc = Feature.find(fc.feature_id)
    end
  end
end
