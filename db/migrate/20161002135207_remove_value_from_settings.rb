class RemoveValueFromSettings < ActiveRecord::Migration[5.0]
  def change
  	remove_column :settings, :value
  end
end
