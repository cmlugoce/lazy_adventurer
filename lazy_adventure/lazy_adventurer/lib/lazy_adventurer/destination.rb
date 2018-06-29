module LazyAdventurer
  class Destination

 @@destination = []

def initialize
  @@destination << self
end

def self.all
  @@destination
end

def self.url(country)
  "https://www.lonelyplanet.com/#{country}"
end




  end #of class


end #of module
