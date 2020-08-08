require_relative './scraper'

class ArticleInfo
  include ScrapedData
  
  def initialize
    ScrapedData.store_article_info
  end
end

puts ArticleInfo.new
