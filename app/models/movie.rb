class Movie < ActiveRecord::Base
  attr_accessible :movie_id, :cname, :oname, :screenshot, :review, :location, :releasedate
  has_many :directors, :through => :renyuans
  has_many :actors, :through => :renyuans
  has_many :renyuans
  has_and_belongs_to_many :genres
  has_many :reslinks
  mount_uploader :screenshot, ScreenshotUploader
  paginates_per 4
  
  def director!(directors)
    directors = directors.split(" ").map do |director|
      Director.find_or_create_by_cname(director)
    end
    
    self.directors << directors
  end
  
  def actor!(actors)
    actors = actors.split(" ").map do |actor|
      Actor.find_or_create_by_cname(actor)
    end
    
    self.actors << actors
  end
  
  def genre!(genres)
    genres = genres.split(" ").map do |genre|
      Genre.find_or_create_by_cname(genre)
    end
    
    self.genres << genres
  end
  
end
