class Reslink < ActiveRecord::Base
  attr_accessible :title, :content
  validates :title, :presence => true
  validates :content, :presence => true
  belongs_to :movie
end
