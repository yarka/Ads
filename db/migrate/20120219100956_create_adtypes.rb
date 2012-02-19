class CreateAdtypes < ActiveRecord::Migration
  def self.up
    create_table :adtypes do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :adtypes
  end
end
