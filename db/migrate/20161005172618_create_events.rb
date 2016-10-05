class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :content
      t.string :location
      t.integer :importance

      t.timestamps
    end
  end
end
