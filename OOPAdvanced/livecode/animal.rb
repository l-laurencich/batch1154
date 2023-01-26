class Animal 
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end

  def self.phyla
    return %w(Ecdysozoa Lophotrochozoa Deuterostomia Chordata)
  end
end