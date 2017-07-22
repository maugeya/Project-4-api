class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :notifications, class_name: "Notification", foreign_key: "receiver_id"
end
