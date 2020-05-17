require_relative '../config/environment.rb'

u1 = User.new("Anna")
u2 = User.new("Brad")
u3 = User.new("Anitha")

pj1 = Project.new("ReciPlease", 1000, u1)
pj2 = Project.new("Project A", 900, u2)
pj3 = Project.new("Project B", 900, u3)


pdg1 = Pledge.new(pj1, 100)

# returns the user associated with a particular pledge


# def reload
#   load 'config/environment.rb'
# end

binding.pry
0