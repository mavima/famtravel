class Review < ApplicationRecord
  belongs_to :facility
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  validates :content, presence: true
  validates :rating, presence: true
end
