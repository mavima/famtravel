class Facility < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
  has_many :feature_facilities
  has_many :reviews, dependent: :destroy
  has_many :features, through: :feature_facilities
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :address, presence: true
  validates :city_id, presence: true

  def average_rating
    # @facility = Facility.find(params[:id])
    @reviews = self.reviews
    sum = 0
    if self[:review].present?
      @reviews.each do |review|
        sum += review.rating
      end
    num = @reviews.count
    average_rating = (sum / num).to_i
    return average_rating
    raise
  end
  end


  def blank_stars
   5 - self.average_rating.to_i
  end

  def test
    puts "testing"
  end


end
