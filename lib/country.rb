require 'nokogiri'
require 'open-uri'
require 'pry'


module Lazy_adventurer
    class Country

 #1.initializemethod with @info, @url
#attr name, url, summary, detail, top_sites

 #2.scrapeinfo
 #3.scrape top sites


doc = Nokogiri::HTML(open('https://www.lonelyplanet.com/canada#articles'))




  #doc = Nokogiri::HTML(open("url"))
  #url = doc.css('div.SightsList-item a').attr('href').text
  #country_page = Nokogiri::HTML(open("url"))

  #@summary = doc.css('span.js-intro-narrative p').text
  binding.pry
end
end
