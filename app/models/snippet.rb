class Snippet < ActiveRecord::Base
  validates :code, :presence => true
  validates :title, :presence => true
  validates :comment, :presence => true
end
