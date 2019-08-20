class Review < ApplicationRecord
  belongs_to :facility, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
