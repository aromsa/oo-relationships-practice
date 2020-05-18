class Listing

  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    # @counter = 0
    Listing.all << self
  end

  # def listing_visited
  #   @counter = @counter + 1
  # end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |t|
      t.listing == self
    end
  end

  def guests
    listing_trips.map {|lt| lt.guest.name}
  end

  def trip_count
    trips.count 
  end

  def self.find_all_by_city(city)
    Listing.all.select {|l| l.city == city}
  end

  def self.most_popular
    listing_count = {}
    Trip.all.each do |t| 
      listing = t.listing.city
      listing_count[listing] ||= 0
      listing_count[listing] += 1
    end
  listing_count.invert.max&.last
  end
end



# DONE #### Listing

# DONE - #guests - returns an array of all guests who have stayed at a listing

# DONE - #trips - returns an array of all trips at a listing

# DONE - #trip_count - returns the number of trips that have been taken to that listing

# DONE - .all - returns an array of all listings

# DONE - .find_all_by_city(city)
      #   - takes an argument of a city name (as a string) and returns all the listings for that city

# DONE - .most_popular
      #   - finds the listing that has had the most trips