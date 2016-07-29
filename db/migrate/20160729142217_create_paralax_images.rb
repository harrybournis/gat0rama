class CreateParalaxImages < ActiveRecord::Migration[5.0]
  def change
    create_table :paralax_images do |t|
      t.string :url
    end
  end
end
