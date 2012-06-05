class CreateCategoriesFamilies < ActiveRecord::Migration
  def self.up
    create_table :categories_families,:id=>false do |t|
      t.integer :category_id
      t.integer :family_id
      t.timestamps
    end
  end
  def self.down
    drop_table :categories_families
  end
end
