class Tag < ActiveRecord::Base
  has_many :tag_snippets
  has_many :snippets, :through => :tag_snippets

  def url
    "/tags/#{name}/"
  end
end
