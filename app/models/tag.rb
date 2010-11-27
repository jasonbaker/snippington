class Tag < ActiveRecord::Base
  belongs_to :tag_categories
  belongs_to :snippets
end
