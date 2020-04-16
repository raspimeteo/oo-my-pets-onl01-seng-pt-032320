require 'pry'

class Owner
  attr_reader :name
  attr_accessor :cats, :dogs

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

  def cats
    Cat.all.select do |cat_object|
      cat_object.owner.name == self.name
    end
  end

  def dogs
    Dog.all.select do |dog_object|
      dog_object.owner.name == self.name
    end
  end

end
