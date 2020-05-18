require_relative '../config/environment.rb'

#### GYM ####

casey = Trainer.new("Casey", 50000)
chloe = Trainer.new("Chloe", 60000)
chris = Trainer.new("Chris", 60000)
max = Trainer.new("Max", 50000)

anna = Client.new("Anna", casey)
christine = Client.new("Christine", casey)
anton = Client.new("Anton", chloe)
jo = Client.new("Jo", chloe)
brad = Client.new("Brad", chris)
steph = Client.new("Steph", max)
anitha = Client.new("Anitha", max)

dumbo = Location.new("DUMBO", 1000)
soho = Location.new("SOHO", 2000)
ps = Location.new("Park Slope", 400)
ch = Location.new("Cobble Hill", 1500)

TrainerLocation.new(chloe, ch)
TrainerLocation.new(chris, dumbo)
TrainerLocation.new(casey, ch)
TrainerLocation.new(max, soho)
TrainerLocation.new(casey, ps)
TrainerLocation.new(chris, ps)
TrainerLocation.new(chris, ch)













#### CROWDFUNDING ####

u1 = User.new("Anna")
u2 = User.new("Brad")
u3 = User.new("Anitha")

pj1 = Project.new("ReciPlease", 1000, u1)
pj2 = Project.new("Project A", 900, u2)
pj3 = Project.new("Project B", 900, u3)

pdg1 = Pledge.new(pj1, 100)

#### LYFT ####

passenger1 = Passenger.new("Casey")
passenger2 = Passenger.new("Brad")
passenger3 = Passenger.new("Lana")
passenger4 = Passenger.new("Kat")

driver1 = Driver.new("Julia", 150)
driver2 = Driver.new("Matt", 80)
driver3 = Driver.new("Wes", 50)
driver4 = Driver.new("Bill", 200)

ride1 = Ride.new(passenger1, 120, driver1)
ride2 = Ride.new(passenger3, 1.5, driver2)
ride3 = Ride.new(passenger2, 105, driver2)
ride4 = Ride.new(passenger4, 1.7, driver4)
ride5 = Ride.new(passenger1, 4.2, driver4)

#### AIRBNB ####

tashawn = Guest.new("Tashawn")
dolly = Guest.new("Dolly")
jeanmarie = Guest.new("Jeanmarie")
yoan = Guest.new("Yoan")
tashawn2 = Guest.new("Tashawn")

paris = Listing.new("Paris")
london = Listing.new("London")
tokyo = Listing.new("Tokyo")
nyc = Listing.new("NYC")
tokyo2 = Listing.new("Tokyo")

trip1 = Trip.new(tashawn, tokyo)
trip2 = Trip.new(dolly, paris)
trip3 = Trip.new(jeanmarie, nyc)
trip4 = Trip.new(yoan, london)
trip5 = Trip.new(tashawn, london)
trip6 = Trip.new(dolly, tokyo)
trip7 = Trip.new(jeanmarie, tokyo)










def reload
  load 'config/environment.rb'
end

binding.pry
0