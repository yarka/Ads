class RemoveImageUrlFromAds < ActiveRecord::Migration
  def up
     remove_column :ads, :image_url, :string
  end

  def down
    add_column :ads, :image_url, :string
  end
end
