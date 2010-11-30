class AddIndexToUser < ActiveRecord::Migration
  def self.up
    add_index :users, :username
  end

  def self.down
    drop_index :users, :username
  end
end
