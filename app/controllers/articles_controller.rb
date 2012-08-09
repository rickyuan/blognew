class ArticlesController < ApplicationController
  #def index
    #@articles = Article.all
  #end
  
  def new
    @article = Article.new
    @categories = Category.all
  end
  
  def create
    @categories = Category.all
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
end
