class AddIsMainCategoryToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :is_main_category, :boolean, null: false, default: false
    add_column :tags, :only_search_tag, :boolean, null: false, default: false
  end
end
