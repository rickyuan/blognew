class Actor < ActiveRecord::Base
  has_many :movies, :through => :renyuans
  has_many :renyuans
end
