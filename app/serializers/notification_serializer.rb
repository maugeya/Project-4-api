class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :read, :receiver_id, :comment_id
  belongs_to :comment
  belongs_to :receiver
end
