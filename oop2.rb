class Animal
  attr_accessor :name

  def initialize(n)
    @name = n.capitalize
  end  

  def eat
    "#{name} is eating"
  end

  def speak
    "#{name} is speaking"
  end
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

# in order to use these modules, your class must respond to a 'name' method call
module Swimmable
  def swim
    "#{name} is swimming!"
  end
end

module Fetchable
  def fetch
    "#{name} is fetching!"
  end
end

class Dog < Mammal
  include Swimmable
  include Fetchable

  def speak
    "#{name} is barking!"
  end
end

class Cat < Mammal
  def speak
    "#{name} is meowing!"
  end
end

teddy = Dog.new('teddy')
puts teddy.swim
# puts teddy.name
# puts teddy.eat
puts teddy.fetch
# puts teddy.speak

# kitty = Cat.new('kitty')
# puts kitty.name
# puts kitty.eat
# puts kitty.speak

puts Dog.ancestors