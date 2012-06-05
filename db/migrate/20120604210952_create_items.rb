class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :categoria_id
      t.string :name
      t.string :metric
      t.boolean :compliance

      t.timestamps
    end
  end
  def self.down
    drop_table :items
  end
end
