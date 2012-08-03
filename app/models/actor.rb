class Actor < ActiveRecord::Base
  validates :cname, :presence => true, :uniqueness => true
  has_many :movies, :through => :renyuans
  has_many :renyuans
end
