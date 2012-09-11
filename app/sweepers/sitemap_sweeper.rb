class SitemapSweeper < ActionController::Caching::Sweeper
  observe Movie, Article

  def sweep(movie)
    expire_page(sitemap_path)
  end
  
  def sweep(article)
    expire_page(sitemap_path)
  end

  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep
end