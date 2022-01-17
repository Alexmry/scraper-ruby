require 'httparty'
require 'nokogiri'
require 'byebug'

def scraper
    url = "https://techcrunch.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    headers= parsed_page.css('a.post-block__title__link')

    headers.each do |header|
        articles = {
            title: header.children.text,
            link: header.attributes["href"].value
        }

    end

    byebug
end

scraper