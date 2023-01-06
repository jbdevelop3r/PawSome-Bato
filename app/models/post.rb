class Post < ApplicationRecord
  belongs_to :user

  validates :pet_name, presence: true
  validates :category, presence: true
  validates :breed, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true

  mount_uploader :thumbnail, ThumbnailUploader
end
