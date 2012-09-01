# encoding: utf-8
class DirectorsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @directors = Director.all
    @pagetitle = "导演列表"
    @meta_description = "ShiWai.In 收集的电影导演，以及他们执导的电影。"
  end
  
  def show
    @director = Director.find(params[:id])
    @pagetitle = @director.cname
    @meta_description = @director.cname + "导演的电影。"
  end
  
end
