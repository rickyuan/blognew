# encoding: utf-8
class ReslinksController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def new
    @movie = Movie.find(params[:movie_id])
    @reslink = @movie.reslinks.build
    @pagetitle = "新建资源"
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
