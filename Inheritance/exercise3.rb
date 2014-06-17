module Towable
  def tow_boulders
    "This truck can haul the biggest boulders"
  end

  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def self.mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def speed_up(n)
    @current_speed += n
    puts "You step on it accelorating #{n} mph."
  end

  def brake(n)
    @current_speed -= n
    puts "You hit the brakes slowing #{n} mph."
  end

  def shut_off
    @current_speed = 0
    puts "Parking."
  end
  
  def current_speed
    puts "You are now going #{@current_speed} mph."
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def spray_paint(color)
    @color = color
    puts "New #{@color} paint job looks great!"
  end

  def to_s
    "My car is a #{@color}, #{@year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2

  include Towable

  def to_s
    "My truck is a #{@color}, #{@year}, #{@model}!"
  end
end

car = MyCar.new(2010, "silver", "Ford Focus")
puts car

truck = MyTruck.new(2012, "orange", "Dodge Ram")
puts truck
puts truck.tow_boulders
puts truck.can_tow?(3400)

puts Vehicle.number_of_vehicles