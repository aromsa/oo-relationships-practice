class User

  attr_accessor :user_name

  @@all = []

  def initialize(user_name)
    @user_name = user_name
    User.all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select{|p| p.user == self}
  end

  def self.highest_pledge
    pledge_amount_hash = {}
    User.all.map do |u| 
      u.pledges.map do |p|
        p.pledge_amount
        pledge_amount_hash[p] ||= pledge_amount_hash[p]
        pledge_amount_hash[p] = p.pledge_amount
      end
    end
    pledge_amount_hash.max_by{|k,v| v}[0].user
  end

  def self.project_pledge
    pp = {}
    User.all.map do |u| 
      u.pledges.map do |p|
        pp[p.project] ||= 0
        pp[p.project] += 1
      end
    end
    pp
  end

  def self.multi_pledger
    #this method returns all users who have made more then one pledge.
    #It doesn't return the user who pledged to multiple unique projects yet.
    user_pledge = {}
    User.all.map do |u| 
      u.pledges.map do |p| 
        user_pledge[p.user] ||= 0
        user_pledge[p.user] += 1
      end
    end
    user_pledge.select{|k,v| v > 1}
  end

  def projects
    Project.all.select{|p| p.creator == self}
  end

  def self.project_creator
    #this is not working yet
    User.all.select do |u|
      u.projects.map do |p|
        p.creator
      end
    end
  end

end

# DONE .highest_pledge - returns the user who has made the highest pledge

# DONE .multi_pledger - returns all users who have pledged to multiple projects

# .project_creator
# returns all users who have created a project