# encoding: utf-8
class GenresController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @genres = Genre.all
    @pagetitle = "电影类别"
  end
  
  def show
    @genre = Genre.find(params[:id])
    @pagetitle = @genre.cname
  end

end
