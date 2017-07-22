class UserSerializer < ActiveModel::Serializer
  attributes :firstname, :lastname, :id, :email, :admin
  has_many :posts
  has_many :comments
  has_many :notifications
  has_many :topics
end
