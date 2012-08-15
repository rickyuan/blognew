class GenresController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @genres = Genre.all
  end
  
  def show
    @genre = Genre.find(params[:id])
  end

end
