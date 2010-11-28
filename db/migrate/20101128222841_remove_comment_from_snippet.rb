class RemoveCommentFromSnippet < ActiveRecord::Migration
  def self.up
    remove_column :snippets, :comment
  end

  def self.down
    add_column :snippets, :comment, :string
  end
end
