
 class CLI

def call
  puts 'hey'
  list_destination
  menu
  goodbye
end

def list_destination

  @places = Destination.place

end

def menu
  puts "Check out the countries and their top sites. Type 'ciao' to leave the program or type 'list' to return the menu"
  input = nil
  while input != "ciao"
  input = gets.strip.downcase
  case input
  when "1"
    puts 'cool'
  when "2"
    puts 'yay'
  when "list"
    list_destination
  else
    puts "Invalid input. Please try again"

  end
  end
end
def goodbye
  puts 'hasta la vista'
end
end
