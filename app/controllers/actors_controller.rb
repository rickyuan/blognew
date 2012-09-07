# encoding: utf-8
class ActorsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @pagetitle = "演员列表"
    @actors = Actor.all
    @meta_description = "ShiWai.In 收集的电影演员，以及他们出演的电影。"
    @canonical_url = actors_url
  end
  
  def show
    @actor = Actor.find(params[:id])
    @pagetitle = @actor.cname
    @meta_description = @actor.cname + "出演的电影。"
    @canonical_url = url_for(@actor)
  end
  
end
