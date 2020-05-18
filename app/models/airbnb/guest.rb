class Guest

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    Guest.all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |t|
      t.guest == self
    end
  end

  def listings
    trips.map {|t| t.listing}
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    Guest.all.select do |g|
      g.trip_count > 1
    end
  end

  def self.find_all_by_name(name)
    Guest.all.select do |g|
      g.name == name
    end
  end

end



# DONE ### Guest

# DONE - #listings - returns an array of all listings a guest has stayed at

# DONE - #trips - returns an array of all trips a guest has made

# DONE - #trip_count - returns the number of trips a guest has taken

# DONE - .all - returns an array of all guests

# DONE - .pro_traveller - returns an array of all guests who have made over 1 trip

# DONE - .find_all_by_name(name) - takes an argument of a name (as a string), returns the all guests with that name