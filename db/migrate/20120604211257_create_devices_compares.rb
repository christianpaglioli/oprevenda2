class CreateDevicesCompares < ActiveRecord::Migration
  def self.up
    create_table :devices_compares, :id=>false do |t|
      t.integer :device_id
      t.integer :compare_id
      t.timestamps
    end
  end
  def self.down
    drop_table :devices_compares
  end
end
