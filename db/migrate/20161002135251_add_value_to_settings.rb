class AddValueToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :value, :jsonb, default: {}, null: false
    add_index :settings, :value
  end
end
