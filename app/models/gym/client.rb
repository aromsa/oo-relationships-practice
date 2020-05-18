class Client

  attr_accessor :name, :trainer

  @@all = []

  def initialize(name, trainer)
    @name = name
    @trainer = trainer
    Client.all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    self.trainer = trainer
  end

end





# DONE #### Client

# DONE - #assign_trainer - should take a trainer as argument and assign it to the client
