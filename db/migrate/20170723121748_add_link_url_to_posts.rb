class AddLinkUrlToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :link_url, :string
  end
end
