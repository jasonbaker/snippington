class RemoveTitleFromSnippet < ActiveRecord::Migration
  def self.up
    remove_column :snippets, :title
  end

  def self.down
    change_table :snippets do |t|
      t.string :title
    end
  end
end
