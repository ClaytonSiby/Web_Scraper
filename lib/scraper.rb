module ScrapedData
  SITE_URL = [
    url = 'https://medium.com/search?q=microverse',
  ].freeze

  # get & parse website data
  def self.inteprete_page
    Nokogiri::HTML(HTTParty.get(SITE_URL[0]).body)
  end

  # store each article info in a hash dataStructure.
  def self.store_article_info
    articles_array = Array.new
    articles_list = self.inteprete_page.css('div.js-postList').css('.js-postListHandle').css('div.js-block')

    articles_list.each do |article|
        art = { 
            author_name: article.css('a.ds-link').text,
            title: article.css('h3.graf--title').text,
            claps_count: article.css('span.js-actionMultirecommendCount').text,     
        }
        articles_array << art
    end

    articles_array
  end
end
