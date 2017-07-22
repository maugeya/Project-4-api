class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :body
  has_many :comments
  has_many :topics
  belongs_to :user
end
