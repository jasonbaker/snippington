class ChangeSnippetCodeToText < ActiveRecord::Migration
  def self.up
    change_table :snippets do |t|
      t.remove :code
      t.text :code
    end
  end

  def self.down
  end
end
