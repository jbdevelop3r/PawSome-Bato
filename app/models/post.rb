class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :pet_name, presence: true
  validates :category, presence: true
  validates :breed, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :reported, inclusion: { in: [true, false] }

  mount_uploader :thumbnail, ThumbnailUploader
end
