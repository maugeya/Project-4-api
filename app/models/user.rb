class User < ApplicationRecord
  has_secure_password validations: false
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :topics
  has_many :notifications, class_name: "Notification", foreign_key: "receiver_id"

  validates :username, uniqueness: true, presence: true, on: :create, length: { in: 2..30 }, format: { without: /\s/ }
  validates :email, uniqueness: true, format: { with: /.*@.*/, message: 'Invalid email address' }, unless: :oauth_login?, on: :create
  validates :password, length: { minimum: 2 }, unless: :oauth_login?, on: :create

  def oauth_login?
    facebook_id.present?
  end
end
