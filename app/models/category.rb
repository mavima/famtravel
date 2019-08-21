class Category < ApplicationRecord
  has_many :facilities
  has_many :features, through: :feature_categories

  validates :name, presence: true
end
