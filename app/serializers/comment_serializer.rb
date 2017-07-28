class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :user, :created_at
  belongs_to :user
  belongs_to :post
  has_many :notifications
end
