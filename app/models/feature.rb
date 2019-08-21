class Feature < ApplicationRecord
  has_many :feature_categories
  has_many :categories, through: :feature_category
  has_many :facilities, through: :feature_facilities

  validates :name, presence: true
end
