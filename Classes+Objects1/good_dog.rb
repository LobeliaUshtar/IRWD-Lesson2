class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n.capitalize
    @height = h
    @weight = w
  end
  
  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name = n.capitalize
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new('sparky', '12 inches', '10 pounds')
puts sparky.info

sparky.change_info('spartacus', '24 inches', '45 pounds')
puts sparky.info