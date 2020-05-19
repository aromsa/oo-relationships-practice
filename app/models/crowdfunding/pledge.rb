class Pledge

  attr_accessor :project, :user, :pledge_amount

  @@all = []

  def initialize(project, user, pledge_amount)
    @project = project
    @user = user
    @pledge_amount = pledge_amount
    Pledge.all << self
  end

  def self.all
    @@all
  end



end


# DONE - #project - returns the project associated with a particular pledge

# DONE - #user - returns the user associated with a particular pledge