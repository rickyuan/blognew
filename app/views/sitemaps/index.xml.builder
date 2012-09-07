# encoding: utf-8
xml.instruct!
xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  xml.url do
     xml.loc "http://shiwai.in"
     xml.priority 1.0
   end
   
   @static_paths.each do |path|
     xml.url do
       xml.loc path
       xml.changefreq("daily")
       xml.priority 1.0
      end
    end
    
   @movies.each do |movie|
     xml.url do
       xml.loc movie_url(movie)
       xml.priority 1.0
      end
    end
    
    @articles.each do |article|
      xml.url do
        xml.loc article_url(article)
        xml.priority 1.0
       end
     end
     
     @genres.each do |genre|
       xml.url do
         xml.loc genre_url(genre)
         xml.priority 1.0
        end
      end
      
      @directors.each do |director|
        xml.url do
          xml.loc director_url(director)
          xml.priority 1.0
         end
       end
       
       @actors.each do |actor|
         xml.url do
           xml.loc actor_url(actor)
           xml.priority 1.0
          end
        end
end