class RenameColumnSettingsKey < ActiveRecord::Migration[5.0]
  def change
  	rename_column :settings, :key, :globals
  end
end
