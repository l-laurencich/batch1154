require_relative "building"
require_relative "butler"

class Castle < Building #Castle is the class
  attr_accessor :moat
  attr_reader :butler, :ruler_name

  def initialize(name, width, length, ruler_name)
    super(name, width, length)
    @ruler_name = ruler_name
    @butler = Butler.new(self) # We need to pass the current instance of Castle
  end

  def ownership_details
    "#{@name} is ruled by #{ruler_name}"
  end

  def ruler_name
    @ruler_name.capitalize
  end

  def self.categories
    return ["Medieval", "Norman", "Ancient"]
  end

  def has_a_moat?
    @moat == true
  end

end

aladin_palace = Castle.new("Aladin's Palace", 500, 800, "aLLadin")
p aladin_palace
p "*****************"
p aladin_palace.butler
p "*****************"
p aladin_palace.butler.clean_castle


# my_castle = Castle.new("green castle", 100, 100) # we create an instance of Castle with the .new method

# p my_castle
# p my_castle.name
# p my_castle.width
# p my_castle.length
# p my_castle.floor_area
# p "**************"
# p "Does our castle have a moat?"
# p my_castle.has_a_moat?
# p "Digging the biggest moat ever"
# p "**************"
# p "Does our castle have a moat?"
# p my_castle.has_a_moat? #instance methods are called on instances
# # p my_castle.categories 
# p Castle.categories # class methods are called on classes


