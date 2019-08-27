class FacilitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search][:city_id] == ""
      flash[:notice] = "Please put a location"
      redirect_to root_path
      return
    end

    @facilities = policy_scope(Facility)

    @facilities = @facilities.joins(:city).where(city_id: params[:search][:city_id])
    @facilities = @facilities.joins(:category).where("categories.id = ?", params[:search][:category_id]) if params[:search][:category_id].present?
    get_user_location
  end

  def new
    @facility = Facility.new
    @facility.category_id = params[:category_id]
    set_cats_and_feats
    authorize @facility
  end

  def create
    @facility = Facility.new(facility_params)
    set_cats_and_feats
    @facility.user = current_user
    if @facility.save
      redirect_to facility_path(@facility)
    else
      @categories = Category.all
      render :new
    end
    authorize @facility
  end

  def show
    @facility = Facility.find(params[:id])
    @features = @facility.features
    @markers = [
      {
        lat: @facility.latitude,
        lng: @facility.longitude,
        image_url: helpers.asset_url('placemarker.png')
      }
    ]
    authorize @facility
  end

  def edit
    @facility = Facility.find(params[:id])
    set_cats_and_feats
    authorize @facility
  end

  def update
    @facility = Facility.find(params[:id])
    @facility.update(facility_params)
    redirect_to facility_path(@facility)
    authorize @facility
  end

  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
    redirect_to root_path
    authorize @facility
  end

  def map
    @facility = Facility.find(params[:id])
    @features = @facility.features
    @markers = [
      {
        lat: @facility.latitude,
        lng: @facility.longitude,
        image_url: helpers.asset_url('placemarker.png')
      }
    ]
    authorize @facility
  end

  private

  def get_user_location
    @user_location = Geocoder.search(request.remote_ip).first.coordinates
    #REMOVE NEXT LINE IN PRODUCTION
    @user_location = [51.509865, -0.118092]
  end

  def facility_params
    params.require(:facility).permit(:city_id, :name, :address, :rating, :photo, :website_link, :latitude, :longitude, :category_id, :photo_cache, feature_ids: [])
  end

  def set_cats_and_feats
    @cities = City.all
    @feature_categories = FeatureCategory.where(category_id: @facility.category_id)
    @features = @feature_categories.map do |fc|
      fc = Feature.find(fc.feature_id)
    end
  end
end

