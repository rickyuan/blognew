class Article < ActiveRecord::Base
  attr_accessible :title, :content, :category_id
  belongs_to :category
  paginates_per 8
end
