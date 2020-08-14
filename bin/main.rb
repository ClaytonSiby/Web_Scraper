require 'colorize'
require 'pry'
require_relative '../lib/structure_data'

def welcome_message
  puts "Hello, please welcome...Entering into scrape mode...\n\n".yellow
end

def all_article_info
  articles = ArticleInfo.new
  puts "Displaying [#{articles.number_of_articles(articles.request_articles).to_s.yellow}] Microverse articles from Medium."
  puts "Listing all articles from the most popular to the least: \n\n".green
  articles.display_info.each do |article|
    sleep(1)
    puts '======================'
    puts article
    sleep(1)
  end
end

def start_scrape
  welcome_message
  sleep(1)
  all_article_info
end

start_scrape
