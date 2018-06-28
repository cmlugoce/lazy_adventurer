require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './destination'

module LazyAdventurer
    class Country

attr_accessor :name, :url, :details, :summary, :cities
 #1.initializemethod with @info, @url
#attr name, url, summary, detail, top_sites
def initialize(name)
    @name = name
  end
 #2.scrapeinfo
 #3.scrape top sites
 def display_country
   scrape_country
   scrape_topcities
   @summary
   @details
 end

def self.scrape_country


  doc = Nokogiri::HTML(open("url"))
  url = doc.css('div.SightsList-item a').attr('href').text
  country_page = Nokogiri::HTML(open("url"))

  @summary = doc.css('span.js-intro-narrative p').text
   titles = doc.css('h2.intro-narrative__title').to_a

    titles = titles.collect{|title| title.text}
#convert to array and iterate!!

 descriptions = doc.css('span.js-intro-narrative').to_a
 descriptions = descriptions.collect{|description| description.text}
 #remove  \u possibly with gsub!

 @details= titles.collect.with_index{|title, index|
  "\n" + title + "\n" + descriptions[index] + "\n"
 }
end

 #need to do an array with titles and descriptions!

 def scrape_topcities
   #similartoscraping_places
   doc = Nokogiri::HTML(open("url"))
   url = doc.css('div.SightsList-item a').attr('href').text
   country_page = Nokogiri::HTML(open("url"))

cities = doc.css('.tlist__title').to_a
cities = cities.each.with_index(1) do |city, index|

  puts "#{index}. #{city.children.text}"
end

end
end

end

 #want to have an array of countries and description
