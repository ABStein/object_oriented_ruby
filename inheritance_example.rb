class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
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
end

class Car < Vehicle
  attr_reader :fuel, :make, :model
  def initialize(input_options)
  super() 
  @fuel = input_options[:fuel] 
  @make = input_options[:make]
  @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

# car = Car.new()
bike = Bike.new

# car.honk_horn
bike.ring_bell

p bike
bike.turn('North by North-West')
car = Car.new(
    make: "Toyota",
    model: "Camry",
    fuel: "regular"
) 

p car.make
