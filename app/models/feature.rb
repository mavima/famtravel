class Feature < ApplicationRecord
  has_many :facilities, through: :feature_facilities
  belongs_to :facility_category
end
