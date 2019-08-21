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

end
