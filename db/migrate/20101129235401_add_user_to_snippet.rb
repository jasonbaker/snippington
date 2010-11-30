class AddUserToSnippet < ActiveRecord::Migration
  def self.up
    change_table :snippets do |t|
      t.references :user
    end
  end

  def self.down
    remove_column :snippets, :user
  end
end
