require 'httparty'
require 'nokogiri'
require 'byebug'

def scraper
    url = "https://techcrunch.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    articles = Array.new
    headers = parsed_page.css('a.post-block__title__link')

    per_page = headers.count
    total = 

    headers.each do |header|
        article = {
            title: header.children.text,
            link: header.attributes["href"].value
        }
        articles << article
    end
    byebug
end

scraper