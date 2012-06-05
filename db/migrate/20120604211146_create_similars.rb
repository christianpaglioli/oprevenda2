class CreateSimilars < ActiveRecord::Migration
  def self.up
    create_table :similars, :id=> false do |t|
      t.integer :device_c_id
      t.integer :device_d_id
      t.timestamps
    end
  end
  def self.down
    drop_table :similars
  end
end
