module ScrapedData
  UNCHANGED_DATA = [
      url = 'https://medium.com/search?q=microverse',
      page = HTTParty.get(url).body,
      inteprete_page = Nokogiri::HTML(page),
      articles_list = inteprete_page.css('div.js-block')
  ].freeze
end

class Articles
  attr_reader :author_name, :title

  def initialize
    
  end
end