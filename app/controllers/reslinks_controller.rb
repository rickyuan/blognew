class ReslinksController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @reslink = @movie.reslinks.build
  end
  
  def create
    @movie = Movie.find(params[:movie_id])
    @reslink = @movie.reslinks.build(params[:reslink])
    if @reslink.save
      redirect_to @movie
    else
      render 'new'
    end
  end
end
