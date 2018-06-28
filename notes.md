country?
has a name
has a description
has a url
has top sites to visit




places = LazyAdventurer::Destination.list

puts places.collect.with_index{|place, index|
 "\t#{index + 1}. #{place.name}. #{place.region}"}
 select_places



 def menu
 puts "Check out the countries and their top sites. Type 'ciao' to leave the program or type 'list' to return the menu"
 input = nil
 while input != "ciao"
 input = gets.strip.downcase
 if input.to_i > 0
   puts @places[input.to_i-1]
 elsif input == "list"
   list_destination
 else
     puts "Invalid input. Please try again"
  end
 end
end
