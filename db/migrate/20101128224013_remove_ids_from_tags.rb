class RemoveIdsFromTags < ActiveRecord::Migration
  def self.up
    change_table :tags do |t|
      t.remove :category_id, :snippet_id
    end
  end

  def self.down
    change_table :tags do |t|
      t.references :category_id, :snippet_id
    end
  end
end
