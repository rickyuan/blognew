class SitemapSweeper < ActionController::Caching::Sweeper
  observe Movie, Article

  def after_create(movie)
    expire_cache_for(sitemap)
  end
  
  def after_create(article)
    expire_cache_for(sitemap)
  end
  
  def after_update(movie)
    expire_cache_for(sitemap)
  end
  
  def after_update(article)
    expire_cache_for(sitemap)
  end

  private
  def expire_cache_for(sitemap)
    expire_page(:controller => 'sitemaps', :action => 'index')
  end
  
end