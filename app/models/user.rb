class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  has_and_belongs_to_many :topics
  has_many :notifications, class_name: "Notification", foreign_key: "receiver_id"

  validates :username, uniqueness: true, presence: true, on: :create, length: { in: 2..10 }
  validates :email, uniqueness: true, format: { with: /.*@.*/, message: 'Invalid email address' }

end
