class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

  def spray_paint(color)
    @color = color
    puts "New #{@color} paint job looks great!"
  end

  def self.mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end
end

MyCar.mileage(13, 351)