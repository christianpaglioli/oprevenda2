class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :name
      t.date :launch
      t.string :form
      t.float :width
      t.float :height
      t.float :depth
      t.float :consumption
      t.float :btu
      t.float :weight
      t.integer :ru
      t.integer :oem_id
      t.boolean :isoem
      t.string  :image
      t.integer :segment_id
      t.integer :family_id
      t.integer :manufactory_id
      t.timestamps
    end
  end
  def self.down
    drop_table :devices
  end
end
