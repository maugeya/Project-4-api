class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_src, :body, :link_url
  has_many :comments
  has_many :topics
  belongs_to :user
  def image_src
  	object.image.url
  end
end
