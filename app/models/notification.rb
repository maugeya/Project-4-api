class Notification < ApplicationRecord
  belongs_to :comment
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
end
