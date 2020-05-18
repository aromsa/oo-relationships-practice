class TrainerLocation

  attr_accessor :trainer, :location

  @@all = []

  def initialize(trainer, location)
    @trainer = trainer
    @location = location
    TrainerLocation.all << self
  end

  def self.all
    @@all
  end

end