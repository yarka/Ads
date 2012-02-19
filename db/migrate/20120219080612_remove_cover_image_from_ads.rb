class RemoveCoverImageFromAds < ActiveRecord::Migration
  def up
    remove_column :ads, :cover_image_uid
  end

  def down
    add_column :ads, :cover_image_uid, :string
  end
end
