require_relative "building"

class Skyscraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner
    if @height > 50
      "this #{capitalized_name} is a skyscraper for Spider-Man."
    else
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name
    @name.capitalize
    # == self.name.capitalize
  end
end

burj = Skyscraper.new("Burj khaLifa", 70, 80, 1000)

p burj
p burj.type_of_owner




# my_skyscraper = Skyscraper.new("02 Tower", 30, 30)

# p my_skyscraper
# p my_skyscraper.name
# p my_skyscraper.width
# p my_skyscraper.length
# p my_skyscraper.floor_area
