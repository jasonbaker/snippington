class CreateTagSnippets < ActiveRecord::Migration
  def self.up
    create_table :tag_snippets do |t|
      t.references :tag
      t.references :snippet

      t.timestamps
    end
  end

  def self.down
    drop_table :tag_snippets
  end
end
