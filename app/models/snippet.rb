require 'set'

class Snippet < ActiveRecord::Base
  @@title_re = /[a-zA-Z0-9\-_].*/

  validates :code, :presence => true
  validates_format_of :title, :with => @@title_re, :message => "Must match #{@@title_re.inspect}"
  validates :title, :presence => true

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
