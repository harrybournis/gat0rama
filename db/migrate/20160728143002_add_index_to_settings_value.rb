class AddIndexToSettingsValue < ActiveRecord::Migration[5.0]
  def up
    add_index :settings, [:value], name: "settings_gin_value", using: :gin
  end

  def down
    remove_index :settings, name: "settings_gin_value"
  end
end
