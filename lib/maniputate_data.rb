require_relative './scraper'

class ArticleInfo
  include ScrapedData

  def initialize; end

  def self.display_authors
    ScrapedData.store_article_info.each do |el|
     puts "#{[el[:author_name], el[:title], el[:claps_count]]} \n\n"
    end
  end

  def self.number_of_articles
    ScrapedData.store_article_info.count
  end

  def self.arrange_articles
    ScrapedData.store_article_info.sort! { |article_one, second_article| second_article[:claps_count] <=> article_one[:claps_count] }
  end
end

puts ArticleInfo.number_of_articles
