class Trip

  attr_accessor :guest, :listing

  @@all = []

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    Trip.all << self
  end

  def self.all
    @@all
  end


end


# DONE ### Trip

# DONE - #listing - returns the listing object for the trip

# DONE - #guest - returns the guest object for the trip

# DONE - .all - returns an array of all trips