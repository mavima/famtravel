class FavouritesController < ApplicationController
  def create
    @facility = Facility.find(params[:facility_id])
    @favourite = Favourite.create(
      user: current_user,
      facility: @facility
    )
    redirect_to facility_path(@facility)
    authorize @favourite
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @user = current_user
    @favourite.destroy
    redirect_to request.referer
    authorize @favourite
  end
end
