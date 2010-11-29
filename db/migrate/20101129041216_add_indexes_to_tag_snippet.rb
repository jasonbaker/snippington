class AddIndexesToTagSnippet < ActiveRecord::Migration
  def self.up
    change_table :tag_snippets do |t|
      t.index :snippet_id
      t.index :tag_id
    end
  end

  def self.down
  end
end
