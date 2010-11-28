class TagSnippet < ActiveRecord::Base
  belongs_to :tag
  belongs_to :snippet
end
