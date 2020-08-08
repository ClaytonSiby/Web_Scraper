require_relative './scraper'

class ArticleInfo
  include ScrapedData

  def self.display_authors
    ScrapedData.store_article_info
  end
end

puts ArticleInfo.display_authors
