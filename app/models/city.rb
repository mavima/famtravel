class City < ApplicationRecord
  has_many :facilities

  validates :name, presence: true
  validates :country, presence: true
end
