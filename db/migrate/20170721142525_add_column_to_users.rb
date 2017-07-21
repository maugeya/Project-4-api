class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string
    add_column :users, :admin, :boolean
    add_column :users, :password_digest, :string
  end
end
