class AddIndexTagsIsMainCategory < ActiveRecord::Migration[5.0]
  def change
  	add_index :tags, :is_main_category
  end
end
