require 'colorize'
require 'pry'
require_relative '../lib/structure_data'

def welcome_message
  puts "Hello, please welcome...Entering into scrape mode...\n\n".yellow
end

def start_scrape
  welcome_message
  articles = ArticleInfo.new
  sleep(1)
  puts "Displaying [#{articles.number_of_articles(articles.request_articles).to_s.yellow}] Microverse articles from Medium. \n\n"
  puts "Listing all articles from the most popular to the least: \n\n".green
  sleep(1)
  articles.display_info
end

start_scrape
