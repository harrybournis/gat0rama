class AddIsSliderPostToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :is_slider_post, :boolean, default: false
  end
end
