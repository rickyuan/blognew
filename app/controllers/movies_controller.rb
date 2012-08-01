class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      @movie.director!(params[:directors])
      @movie.actor!(params[:actors])
      @movie.genre!(params[:genres])
      redirect_to @movie, :flash => { :success => "Created a movie successful." }
    else
      render 'new'
    end 
  end
  
  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
      @movie.director!(params[:directors])
      @movie.actor!(params[:actors])
      @movie.genre!(params[:genres])
      redirect_to @movie, :flash => { :success => 'Updated sucessful!' }
    else
      render 'edit'
    end
  end
  
end
