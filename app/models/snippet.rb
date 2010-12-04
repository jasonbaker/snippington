require 'set'

class Snippet < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 10

  validates :code, :presence => true

  belongs_to :user, :foreign_key => "user_id", :class_name => "User"
  has_many :tag_snippets
  has_many :tags, :through => :tag_snippets

  def tags_list
    tags.collect {|tag| tag.name}
  end

  def tags_string 
    (tags_list).join(" ")
  end

  def tags_set
    (tags_list).to_set
  end

  def tags_string=(new_str)
    tag_set = (tags_list).to_set
    input_tags = new_str.split(/\s/)
    input_tags.each do |tag|
      unless tag_set.include?(tag)
        db_record = Tag.find_or_create_by_name(tag)
        tags.push(db_record)
      end
    end
  end
end
