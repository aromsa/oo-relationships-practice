class Ride

  attr_accessor :passenger, :distance, :driver

  @@all = []

  def initialize(passenger, distance, driver)
    @passenger = passenger
    @distance = distance
    @driver = driver
    Ride.all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    a = Ride.all.map {|r| r.distance}
    sum = a.sum
    sum / Ride.all.count
  end

end



# DONE #### Ride

# DONE - #passenger - returns the passenger object for that ride

# DONE - #driver - returns the driver object for that ride

# DONE - #distance - returns the distance travelled for that ride

# DONE - .average_distance - should find the average distance of all rides