require_relative "building"

class House < Building #By passing a < sign and the name of the parent class, House becomes a child/subclass that inherits all state and behaviour from the parent class
  # attr_reader :name, :width, :length #, :floor_area

  def floor_area
    super + 45
  end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Munich" then 13000
    else raise Exception.new("No data for #{city}")
    end
  end

  # def initialize(name, width, length)
  #   @name = name
  #   @width = width
  #   @length = length
  #   # @floor_area = length * width
  # end

  # #instance method
  # def floor_area
  #   @width * @length
  # end

end



my_house = House.new("blue house", 50, 40)

p my_house
p my_house.name
p my_house.width
p my_house.length
p my_house.floor_area
# p my_house.has_a_moat? This is a specific method for Castles, not working with a house
p "What is the price/sqm in Munich"
p House.price_per_square_meter("Munich")
p "What is the price/sqm in Berlin"
p House.price_per_square_meter("Berlin")
