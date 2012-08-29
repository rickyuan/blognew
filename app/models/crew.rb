class Crew < ActiveRecord::Base
  belongs_to :movie
  belongs_to :director
  belongs_to :actor
end
