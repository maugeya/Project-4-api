class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :notifications

  validates :body, presence: true, length: { in: 2..140 }
end
