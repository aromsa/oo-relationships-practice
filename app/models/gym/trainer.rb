class Trainer

  attr_accessor :name
  attr_reader :salary

  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    Trainer.all << self
  end

  def self.all
    @@all
  end

  def clients
    Client.all.select do |c|
      c.trainer == self
    end
  end

  def self.most_clients
    client_count = {}
    Client.all.each do |c|
      trainer = c.trainer
      client_count[trainer] ||= 0
      client_count[trainer] += 1
    end
    top_trainer = client_count.max_by{|k, v| v}[0]
    new_salary = top_trainer.salary + 1000
    "The trainer with the most clients is #{top_trainer.name}. A bonus in the amount of $1,000 has been added to her salary. #{top_trainer.name}'s salary is now #{new_salary}."
  end

  # def bonus(amount)
  #   top_trainer = Trainer.most_clients
  #     top_trainer.salary + amount
  # end

end



# DONE #### Trainer

# DONE - .most_clients - should find which trainer has the most clients. give that trainer a bonus!