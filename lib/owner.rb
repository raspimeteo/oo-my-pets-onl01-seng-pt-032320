
class Owner
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    species
    pets = []
  end

  def species
    @species = "human"
  end

  def say_species
    ## binding.pry
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

end
