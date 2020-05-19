class Project

  attr_accessor :creator, :pledge_goal, :project_name

  @@all = []

  def initialize(project_name, pledge_goal, creator)
    @project_name = project_name
    @pledge_goal = pledge_goal
    @creator = creator
    Project.all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|p| p.project == self}
  end

  def pledges_total
    pledges.map {|p| p.pledge_amount}.sum
  end

  def self.no_pledges
    Project.all.select {|p| p.pledges.count == 0}
  end

  def self.above_goal
    Project.all.select {|p| p.pledges_total >= p.pledge_goal}
  end

  def self.most_backers
    project_backers = {}
    Project.all.map do |p|
      project_backers[p] ||= 0
      project_backers[p] = p.pledges.count
    end
    project_backers.max_by{|k,v| v}[0]
  end

  ##### Chaya's code counts only UNIQUE backers. ####
  # def self.most_backers
  #   Project.all.max_by do |project|
  #       users = []
  #       project.pledges.each do |pledge|
  #       users << pledge.user
  #       end
  #       users.uniq.count
  #   end
  # end
  
end

# DONE .no_pledges - returns all projects which have no pledges yet

# DONE .above_goal - returns all projects which have met or exceeded their pledge goal

# DONE .most_backers - returns the project with the highest number of backers