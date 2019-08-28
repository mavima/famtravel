class City < ApplicationRecord
  include AlgoliaSearch
  has_many :facilities, dependent: :destroy
  validates :name, presence: true
  validates :country_city, presence: true
  mount_uploader :photo, PhotoUploader

  algoliasearch do
  end
end
