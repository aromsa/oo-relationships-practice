class Pledge

  attr_accessor :amount, :project

  @@all = []

  def initialize(project, amount)
    @project = project
    @amount = amount
  end

  def self.all
    @@all
  end

  

  def user
    Project.all.map do |p|
      p.user
    # binding.pry
    end
  end

end

# DONE #project
        # returns the project associated with a particular pledge

# #user
# returns the user associated with a particular pledge