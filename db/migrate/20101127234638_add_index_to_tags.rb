class AddIndexToTags < ActiveRecord::Migration
  def self.up
    add_index :tags, :name
  end

  def self.down
  end
end
