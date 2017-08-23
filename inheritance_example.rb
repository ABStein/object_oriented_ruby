class Car
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
    @fuel = 'premium'
    @make = 'Honda'
    @model = 'Accord'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  def initialize(input_options) 
    super
    @bike = input_options[:bike]
    @weight = '30 lbs'
    @make = 'schwinn'
    @model = 'swift'
    @fuel = 'none'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(
  weight: "40 lbs",
  make: "schwinn",
  model: "swift",
  fuel: "none"
) 
# car = Car.new 

p bike.fuel
