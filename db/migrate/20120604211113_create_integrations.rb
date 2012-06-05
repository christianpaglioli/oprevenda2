class CreateIntegrations < ActiveRecord::Migration
  def self.up
    create_table :integrations, :id=> false do |t|
      t.integer :device_a_id
      t.integer :device_b_id
      t.timestamps
    end
  end
  def self.down
    drop_table :integrations
  end
end
