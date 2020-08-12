require_relative './scraper'

class ArticleInfo
  include ScrapedData

  # sort the articles in a discending order ( using the number of claps)
  def arrange_articles(array)
    array.sort! { |one, second| second[:claps_count] <=> one[:claps_count] }
  end

  private_instance_methods def request_articles
    ScrapedData.store_article_info
  end

  # display the data in a structured way.
  private_instance_methods def display_info
    structured_data = []
    arrange_articles(request_articles).each do |el|
      structured_data << "author: #{el[:author_name].blue}\ntitle: #{el[:title].blue}\npopularity: #{el[:claps_count].green}\n\n"
    end

    structured_data
  end

  # count the number of articles received.
  def number_of_articles(array)
    array.count
  end
end
