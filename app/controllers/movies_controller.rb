# encoding: utf-8
class MoviesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @movies = Movie.order.page params[:page]
    @genres = Genre.all
    @pagetitle = "电影列表"
    # @category = Category.find_by_id('2')
    # @articles = @category.articles
  end
  
  def new
    @movie = Movie.new
    @pagetitle = "新建电影"
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
    @directors = @movie.directors
    @actors = @movie.actors
    @genres = @movie.genres
    @pagetitle = @movie.cname
  end
  
  def edit
    @movie = Movie.find(params[:id])
    @directors = @movie.directors
    @actors = @movie.actors
    @genres = @movie.genres
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
  
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end
  
end
