class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :body
  has_many :comments
  # has_and_belongs_to_many :topics
  belongs_to :user
end
