require 'nokogiri'
require 'open-uri'
require 'pry'

module LazyAdventurer
class DestinationScraper
  attr_accessor :name, :region, :url

  def self.place
    self.scrape_places
   end
  #returning results of countries in the adventure themes
def self.scrape_places
  places = []
  doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/adventure-travel/"))
  adventures = doc.css('div.SightsList-wrap a')

  adventures.collect.with_index do |adventure, i|
    new_adventure = self.new
    new_adventure.name = adventure.css('h5').text
    new_adventure.region = adventure.css('p').text
    new_adventure.url = adventure.attr('href')

    places << new_adventure
  end
  places

 end
end
end exit
