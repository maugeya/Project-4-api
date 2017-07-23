class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  has_and_belongs_to_many :topics
  has_many :notifications, class_name: "Notification", foreign_key: "receiver_id"

  validates :username, uniqueness: true, presence: true, on: :create, length: { in: 2..15 }, format: { without: /\s/ }
  validates :email, uniqueness: true, format: { with: /.*@.*/, message: 'Invalid email address' }, on: :save
  validates :password, length: { minimum: 2 }, on: :save
end
