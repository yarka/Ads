class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file_uid
      t.integer :ad_id

      t.timestamps
    end
  end
end
