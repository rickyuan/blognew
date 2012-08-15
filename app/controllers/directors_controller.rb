class DirectorsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @directors = Director.all
  end
  
  def show
    @director = Director.find(params[:id])
  end
  
end
