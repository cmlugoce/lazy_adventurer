require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative 'destinations.rb'

module TravelInspiration
    class Country
attr_accessor :name
def initialize(name)
  @name = name
 #1.initializemethod with @info, @url

 #2.scrapeinfo
 #3.scrape season
end

end 
