class PagesController < ApplicationController
  def home
  end

  def search
    redirect_to category_facilities_path(params[:search][:category], keyword: params[:search][:keyword])
  end
end
