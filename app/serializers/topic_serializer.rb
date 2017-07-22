class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users
  has_many :posts
end
