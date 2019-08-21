class FeatureFacility < ApplicationRecord
  belongs_to :facility, dependent: :destroy
  belongs_to :feature, dependent: :destroy
end
