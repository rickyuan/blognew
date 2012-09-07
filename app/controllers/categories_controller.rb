# encoding: utf-8
class CategoriesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @categories = Category.all
    @pagetitle = "文章类别"
  end
  
  def new
    @category = Category.new
    @pagetitle = "新建类别"
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end
  
  def show
    @category = Category.find(params[:id])
    @pagetitle = @category.name
    @canonical_url = url_for(@category)
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
  
end
