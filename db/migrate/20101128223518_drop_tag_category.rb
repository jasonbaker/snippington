class DropTagCategory < ActiveRecord::Migration
  def self.up
    drop_table :tag_categories
  end

  def self.down
    create_table :tag_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
