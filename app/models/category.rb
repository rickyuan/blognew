class Category < ActiveRecord::Base
  attr_accessible :name, :ename
  validates :name, :presence => true
  validates :ename, :presence => true
  has_many :articles
end
