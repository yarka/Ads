class AddCoverImageUrl < ActiveRecord::Migration
  def up
    add_column :ads, :cover_image_uid,  :string
  end

  def down
    remove_column :ads, :cover_image_uid,  :string
  end
end
