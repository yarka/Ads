class AddAdTypeIdToAds < ActiveRecord::Migration
  def change
    add_column :ads, :adtype_id, :integer
  end
end
