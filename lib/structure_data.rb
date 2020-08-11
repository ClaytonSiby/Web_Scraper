require_relative './scraper'

class ArticleInfo
  include ScrapedData

  def initialize; end

  # sort the articles in a discending order ( using the number of claps)
  def arrange_articles(array)
    array.sort! { |one, second| second[:claps_count] <=> one[:claps_count] }
  end

  def request_articles
    ScrapedData.store_article_info
  end

  # display the data in a structured way.
  def display_info
    arrange_articles(request_articles).each do |el|
      sleep(2)
      puts '======================'
      puts " author: #{el[:author_name].blue} \n title: #{el[:title].blue} \n popularity: #{el[:claps_count].green} \n \n\n"
    end
  end

  # count the number of articles received.
  def number_of_articles(array)
    array.count
  end
end
