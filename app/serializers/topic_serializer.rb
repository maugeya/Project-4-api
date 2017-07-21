class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_and_belongs_to_many :users
  has_and_belongs_to_many :posts
end
