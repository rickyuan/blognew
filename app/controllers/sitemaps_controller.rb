class SitemapsController < ApplicationController
  #caches_page :index
  cache_sweeper :sitemap_sweeper
  
  def index
    @static_paths = [movies_url, articles_url]
    @movies = Movie.all
    @articles = Article.all
    @genres = Genre.all
    @directors = Director.all
    @actors = Actor.all
    respond_to do |format|
      format.xml
    end  
  end
end
