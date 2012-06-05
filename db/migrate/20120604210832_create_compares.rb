class CreateCompares < ActiveRecord::Migration
  def self.up
    create_table :compares do |t|
      t.date :date
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end
  def self.down
    drop_table :compares
  end
end
