class Review < ApplicationRecord
  belongs_to :facility
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
