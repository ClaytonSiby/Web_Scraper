require 'nokogiri'
require 'httparty'
require 'pry'

# def scraper # scraper function holding the info tt we need to scrap from the website.
#   url = 'https://medium.com/search?q=microverse'
#   page = HTTParty.get(url).body # make a get request to the http & return the raw html of the page.
#   inteprete_page = Nokogiri::HTML(page) # parse/inteprete the html so we can extract the data out of it.
#   articles_list = inteprete_page.css('div.js-block') # data for ten articles
#   articles_array = Array.new
#   articles_list.each do |article|
#     art = { 
#         author_name: article.css('a.ds-link').text,
#         title: article.css('h3.graf--title').text,
#         claps_count: article.css('span.js-actionMultirecommendCount').text,
#      }
#     articles_array << art
#   end
#   Pry.start(binding)
# end

scraper
