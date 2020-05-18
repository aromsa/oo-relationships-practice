class Driver

  attr_accessor :name, :distance

  @@all = []

  def initialize(name, distance)
    @name = name
    @distance = distance
    Driver.all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|r| r.driver == self}
  end

  def name
    rides.last.passenger.name
  end

  def passengers
    rides.map {|r| r.passenger}
  end

  def self.mileage_cap(dist)
      Driver.all.select {|d| d.distance > dist}
  end

end





# DONE #### Driver

# DONE - #name - returns the name of the passenger

# DONE - #rides - returns all rides a driver has made

# DONE - #passengers - returns all passengers a driver has had

# DONE - .all - returns an array of all drivers

# DONE - .mileage_cap(distance)
      # - takes an argument of a distance (float) and returns all drivers who have exceeded that 