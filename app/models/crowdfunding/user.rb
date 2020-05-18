class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def projects
    
  end

end

# .highest_pledge
# returns the user who has made the highest pledge
# .multi_pledger
# returns all users who have pledged to multiple projects
# .project_creator
# returns all users who have created a project