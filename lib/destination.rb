require 'nokogiri'
require 'open-uri'
require 'pry'
Module Lazy_adventurer
class Destination
  attr_accessor :name, :region, :url

  def self.list_places
     self.scrape_places
   end
  #returning results of countries in the adventure themes
def self.scrape_places
  places = []
  doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/adventure-travel/"))
  adventures = doc.search('div.SightsList-wrap a')

  adventures.collect.with_index{|adventure, i|
    new_adventure = self.new
    new_adventure.name = adventure.css('h5').text
    new_adventure.region = adventure.css('p').text
    new_adventure.url = adventure.attr('href')
    list[index] = new_adventure
  }
  list
end
end


end
