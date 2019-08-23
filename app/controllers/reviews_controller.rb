class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @facility = Facility.find(params[:facility_id])
    @category = Category.find(@facility.category_id)
    authorize @review
  end

  def create
    @review = Review.new(review_strong_params)
    @review.user = current_user
    @facility = Facility.find(params[:facility_id])
    @review.facility = @facility
    if @review.save
      redirect_to facility_path(@facility) # pending complete
    else
      render :new
    end
    authorize @review
  end

  def edit
    @review = Review.find(params[:id])
    authorize @review
  end

  def update
    @review = Review.find(params[:id])
    authorize @review
    # pending complete!!!
    authorize @review
  end

  def review_strong_params
    params.require(:review).permit(:content, :rating, :photo)
  end
end
