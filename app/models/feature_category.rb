class FeatureCategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :feature, dependent: :destroy
end
