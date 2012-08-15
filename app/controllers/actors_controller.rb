class ActorsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @actors = Actor.all
  end
  
  def show
    @actor = Actor.find(params[:id])
  end
  
end
