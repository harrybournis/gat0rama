class RemoveOnlySearchTagFromTags < ActiveRecord::Migration[5.0]
  def change
  	remove_column :tags, :only_search_tag
  end
end
