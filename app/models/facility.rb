class Facility < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :facility_category
end
