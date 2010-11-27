class AddSnippetToTags < ActiveRecord::Migration
  def self.up
    change_table :tags do |t|
      t.references :snippet
    end
  end

  def self.down
    change_table :tags do |t|
      t.remove :snippet
    end
  end
end
