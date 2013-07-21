class Manuscript < ActiveRecord::Base
  attr_accessible :author, :title
  validates :title, presence: true
  validates :author, presence: true
end
