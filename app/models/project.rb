class Project

  attr_accessor :user, :pledge_goal, :project_name

  @@all = []

  def initialize(project_name, pledge_goal, user)
    @project_name = project_name
    @pledge_goal = pledge_goal
    @user = user
    Project.all << self
  end

  def self.all
    @@all
  end

end

# .no_pledges
# returns all projects which have no pledges yet
# .above_goal
# returns all projects which have met or exceeded their pledge goal
# .most_backers
# returns the project with the highest number of backers