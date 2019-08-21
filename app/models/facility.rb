class Facility < ApplicationRecord
  belongs_to :user
  belongs_to :city, dependent: :destroy
  belongs_to :category
  has_many :reviews
  has_many :features, through: :feature_facilities
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :adress, presence: true
  validates :rating, presence: true
end
