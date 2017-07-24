class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :topics

  validates :title, presence: true, length: { in: 2..80 }
  validates :body, presence: true, length: { in: 2..9000 }
  validates :topics, presence: true
end
