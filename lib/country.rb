require 'nokogiri'
require 'open-uri'
require 'pry'


module TravelInspiration
    class Country

 #1.initializemethod with @info, @url


 #2.scrapeinfo
 #3.scrape season




  doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/canada#articles"))
  summary = doc.css('span.js-intro-narrative p').text
  binding.pry
end
end
