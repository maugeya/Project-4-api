class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :body, :link_url
  has_many :comments
  has_many :topics
  belongs_to :user
end
