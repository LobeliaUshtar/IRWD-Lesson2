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
end

mustang = MyCar.new(1973, 'yellow', 'mustang')
mustang.color = 'mustard'
puts mustang.color
puts mustang.year