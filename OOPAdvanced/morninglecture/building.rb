class Building 
  attr_reader :name, :width, :length #, :floor_area

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    # @floor_area = length * width
  end


  #instance method
  def floor_area
    @width * @length 
  end

end

