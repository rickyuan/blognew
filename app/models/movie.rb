class Movie < ActiveRecord::Base
  attr_accessible :movie_id, :cname, :oname, :screenshot, :review, :location, :releasedate
  mount_uploader :screenshot, ScreenshotUploader
end
