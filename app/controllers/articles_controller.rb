class ArticlesController < ApplicationController
  def index
    @articles = Article.order(:created_at).page params[:page]
  end
  
  def new
    @categories = Category.all
    @article = Article.new
  end
  
  def create
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
  
  def edit
    @categories = Category.all
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])
    redirect_to @article
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end
  
end
