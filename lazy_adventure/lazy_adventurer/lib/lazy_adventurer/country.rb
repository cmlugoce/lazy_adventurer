require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './destination_scraper'

module LazyAdventurer
    class Country

attr_accessor :name, :url, :details, :summary, :cities
 #1.initializemethod with @info, @url
#attr name, url, summary, detail, top_sites
@@all = []
def initialize(name)
    @name = name
    @@all << self
  end
 #2.scrapeinfo
 #3.scrape top sites
 def self.display_country

    self.scrape_country
    #puts "#{@summary}"
   #@details.collect{|detail, i|
    #puts "#{detail}"}
  end




def self.scrape_country
  doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/adventure-travel/"))
  url = doc.css('div.SightsList-wrap a').attr('href')
  doc_1 = Nokogiri::HTML(open(url))


  @summary = doc_1.css('div.intro-narrative__featured').text.gsub("\n", "").strip
  titles = doc_1.css('h2.intro-narrative__title').to_a
  titles = titles.collect{|title| title.text}
  titles

 descriptions = doc_1.css('p.intro-narrative__text').to_a
 descriptions = descriptions.collect{|d| d.text}
descriptions

 @details= titles.collect.with_index{|title, index|
 "\n" + title + "\n" + descriptions[index] + "\n"
}
@summary
@details

end



 def self.scrape_top_cities
   #similartoscraping_places
   doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/adventure-travel/"))
   url = doc.css('div.SightsList-wrap a').attr('href')
   doc_2 = Nokogiri::HTML(open(url))
   @cities = doc_2.css('.tlist__title').to_a
   @cities = cities.each.with_index(1) do |city, index|

end
cities

end

def self.scrape_all
 countries = []
  doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/adventure-travel/"))
  url = doc.search('div.SightsList-wrap a').attr('href')
  doc_2 = Nokogiri::HTML(open(url))
   doc_2.search('div.intro-narrative__expanded').collect do |page, i|
     new_country = LazyAdventurer::Destination.new
     new_country.name = doc_2.search('h2.intro-narrative__title').to_a
     new_country.description = doc_2.search('p.intro-narrative__text').to_a
     countries << new_country
   end
   countries
 end

def self.all
  @@all
end

def self.save
  @@all
end
end

end

