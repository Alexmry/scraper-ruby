require 'httparty'
require 'nokogiri'
require 'byebug'

def scraper
    url = "https://techcrunch.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    byebug
end

scraper