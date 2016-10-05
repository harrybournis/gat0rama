class AddPostIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :post_id, :integer
    add_index :events, :post_id
  end
end
