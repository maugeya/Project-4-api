class AddColomnSenderToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_column :notifications, :sender, :string
  end
end
