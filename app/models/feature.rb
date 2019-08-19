class Feature < ApplicationRecord
  has_many :facilities, through: :feature_facilities
end
