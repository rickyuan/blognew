class Article < ActiveRecord::Base
  attr_accessible :title, :content, :category_id
  belongs_to :category
  paginates_per 13
  default_scope order('created_at DESC')
end
