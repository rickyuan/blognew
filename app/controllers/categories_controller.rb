class CategoriesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
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
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
  
end
