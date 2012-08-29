# encoding: utf-8
class DirectorsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @directors = Director.all
    @pagetitle = "导演列表"
  end
  
  def show
    @director = Director.find(params[:id])
    @pagetitle = @director.cname
  end
  
end
