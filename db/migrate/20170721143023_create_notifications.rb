class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.boolean :read
      t.references :comment, foreign_key: true
      t.integer :receiver_id

      t.timestamps
    end
  end
end
