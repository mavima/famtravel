class Facility < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :facility_category
  has_many :reviews
  has_many :features, through: :feature_facilities
  mount_uploader :photo, PhotoUploader
end
