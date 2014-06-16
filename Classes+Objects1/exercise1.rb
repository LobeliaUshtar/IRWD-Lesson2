class MyCar
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

mustang = MyCar.new(1973, 'mustard', 'mustang')
mustang.speed_up(50)
mustang.current_speed
mustang.brake(15)
mustang.current_speed
mustang.shut_off