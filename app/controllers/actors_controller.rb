# encoding: utf-8
class ActorsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @pagetitle = "演员列表"
    @actors = Actor.all
  end
  
  def show
    @actor = Actor.find(params[:id])
    @pagetitle = @actor.cname
  end
  
end
