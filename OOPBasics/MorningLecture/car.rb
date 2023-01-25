#filename in lower_snake_case
#classname in UpperCamelCase

class Car
  attr_reader :brand
  attr_writer :color
  # reader + writer =
  attr_accessor :color
  
  def initialize(color, brand)
    @color = color 
    @brand = brand
    @engine_started = false
    @can_go_as_fast_as_it_wants = false
  end

  #explicit return #explicit getter
  # def color
  #   @color
  # end


  # def brand
  #   @brand
  # end

  #explicit setter
  # def color=(new_color)
  #   @color = new_color
  # end
  

  #getter
  def engine_started?
    @engine_started
  end

  #setter
  def start_engine
    puts release_exhaust_fumes
    puts ignite_spark_plug
    @engine_started = true
  end

  private

  def release_exhaust_fumes
    "releasing all the fumes"
  end

  def ignite_spark_plug
    "igniting spark plugs"
  end

  
end
