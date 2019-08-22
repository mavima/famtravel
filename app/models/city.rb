class City < ApplicationRecord
  has_many :facilities, dependent: :destroy
  validates :name, presence: true
  validates :country_city, presence: true
end
