# encoding: utf-8
class GenresController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @genres = Genre.all
    @pagetitle = "电影类别"
    @meta_description = "ShiWai.In收集的电影，所有的类别。"
    @canonical_url = genres_url
  end
  
  def show
    @genre = Genre.find(params[:id])
    @pagetitle = @genre.cname
    @meta_description = @genre.cname + "下所有的电影。"
    @canonical_url = url_for(@genre)
  end

end
