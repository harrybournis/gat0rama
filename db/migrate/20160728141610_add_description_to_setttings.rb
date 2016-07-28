class AddDescriptionToSetttings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :description, :string
    rename_column :settings, :globals, :value
  end
end
