require 'set'

class Snippet < ActiveRecord::Base
  validates :code, :presence => true
  validates :title, :presence => true
  validates :comment, :presence => true

  has_many :tags

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
        db_record = Tag.new(:name => tag)
        db_record.save
        tags.push(db_record)
      end
    end
  end
end
