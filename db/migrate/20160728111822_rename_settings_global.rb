class RenameSettingsGlobal < ActiveRecord::Migration[5.0]
  def change
  	rename_column :settings, :global, :key
  end
end
