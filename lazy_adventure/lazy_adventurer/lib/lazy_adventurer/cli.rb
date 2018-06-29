equire_relative 'destinations.rb'
require_relative 'country.rb'

module LazyAdventurer
 class CLI

def call
  list_destination
  menu
  goodbye
end

def list_destination

  @places = LazyAdventurer::DestinationScraper.place
  puts @places.collect.with_index{|place, index|
 "\t#{index + 1}. #{place.name}. #{place.region}"}
end

def menu(places)
  puts "Check out the countries and their top sites. Type 'ciao' to leave the program or type 'list' to return the menu"
  input = nil
  while input != "ciao"
  input = gets.strip.downcase

   if input.to_i > 0 && input.to_i < 7
     selection =  @places[input.to_i-1].name
    puts "Great choice. #{selection} is a beautiful country!"
    country_details(selection)
  elsif input == 'list'
    list_destination
  else
    puts "Invalid input, please try again"
end
end
end

def country_details(selection)
  country = LazyAdventurer::Country.new(selection)
  puts Country.display_country
end


def goodbye
  puts 'hasta la vista'
end












end #of class

end #of module
