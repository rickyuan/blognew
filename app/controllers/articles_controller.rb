# encoding: utf-8
class ArticlesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    @articles = Article.order.page params[:page]
    @pagetitle = "文章"
    @meta_description = "电影，音乐，旅行，互联网，所思所想，文章列表。"
  end
  
  def new
    @categories = Category.all
    @article = Article.new
    @pagetitle = "写文章"
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
    @pagetitle = @article.title
    @meta_description = @article.title + ", " + @article.content[0..100]
    @canonical_url = url_for(@article)
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
