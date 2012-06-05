class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.integer :item_id
      t.integer :device_id
      t.boolean :compliance
      t.string :decription
      t.timestamps
    end
  end
  def self.down
    drop_table :specifications
  end
end
