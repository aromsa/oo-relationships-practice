class Passenger

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    Passenger.all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|r| r.passenger == self}
  end

  def drivers
    rides.map {|r| r.driver}
  end

  def total_distance
    a = rides.map {|r| r.distance}
    a.sum
  end

  def self.premium_members
    members = {}
    Ride.all.each do |r| 
      name = r.passenger.name
          members[name] ||= 0
          members[name] += r.distance
    end
    members.select do |key, value| 
      value > 100
    end
  end

end


# DONE #### Passenger

# DONE - #name - returns the name of the passenger

# DONE - #rides - returns all rides a passenger has been on

# DONE - #drivers - returns all drivers a passenger has ridden with

# DONE - .all - returns an array of all passengers

# DONE - #total_distance - should calculate the total distance the 
        # passenger has travelled with the
        # service

# DONE - .premium_members
      # - should find all passengers who have travelled over 100 miles with the service