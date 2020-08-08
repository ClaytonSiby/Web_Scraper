require_relative './scraper'

class ArticleInfo
  include ScrapedData

  def initialize; end

  def self.display_info
    ScrapedData.store_article_info.each do |el|
      puts " author: #{el[:author_name].blue} \n title: #{el[:title].blue} \n popularity: #{el[:claps_count].green} \n\n"
    end
  end

  def self.number_of_articles
    ScrapedData.store_article_info.count
  end

  def self.arrange_articles
    ScrapedData.store_article_info.sort! { |one, second| second[:claps_count] <=> one[:claps_count] }
  end
end
