require 'nokogiri'
require 'httparty'
require 'colorize'
require 'pry'
require_relative '../lib/structure_data'

def welcome_message
  puts "Hello please welcome...Entering into scrape mode...\n\n".yellow
end

def start_scrape
  welcome_message
  sleep(1)
  puts "Displaying [#{ArticleInfo.number_of_articles.to_s.yellow}] Microverse articles from Medium. \n\n"
  sleep(2)
  puts "Listing all articles from the most popular to the least: \n\n".green
  sleep(1)
  ArticleInfo.display_info
end

start_scrape
