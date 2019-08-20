class PagesController < ApplicationController
  def home
  end

  def search
    redirect_to facilities_category_facilities_path(params[:search][:facility_category], keyword: params[:search][:keyword])
  end
end
