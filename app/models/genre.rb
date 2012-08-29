class Genre < ActiveRecord::Base
  validates :cname, :presence => true, :uniqueness => true
  has_and_belongs_to_many :movies
end
