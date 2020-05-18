class Location

  attr_accessor :name, :marketing_budget

  @@all = []

  def initialize(name, marketing_budget)
    @name = name
    @marketing_budget = marketing_budget
    Location.all << self
  end

  def self.all
    @@all
  end

  def trainers
    TrainerLocation.all.select {|tl| tl.location == self}.map {|l| l.trainer}
  end

  def clients
    trainers.map {|t| t.clients}.flatten
  end

  def client_count
    clients.count
  end

  def self.least_clients
    location_clients = {}
    Location.all.map do |l| 
      location_clients[l] ||= 0
      location_clients[l] += l.client_count
    end
    lc = location_clients.min_by{|k, v| v}[0]
    new_marketing_budget = lc.marketing_budget - 100
    "The location with the least amount of clients is #{lc.name}. A new add has been purchased for $100, bringing #{lc.name}'s marketing budget to $#{new_marketing_budget}"
  end

  def buy_add(amount)
    self.marketing_budget = self.marketing_budget - amount
  end

end

# DONE #### Location

# DONE - .least_clients
      #   - should find which location has the least clients training there. 
      #   - We need to increase the marketing spend for that location!