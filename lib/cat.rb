require 'pry'
class Cat
  attr_reader :name, :owner

  def initialize(name, owner)
    @name = name
    @owner = owner
    binding.pry
  end

  # def owner(new_owner)
  #   self.owner = new_owner
  # end

end
