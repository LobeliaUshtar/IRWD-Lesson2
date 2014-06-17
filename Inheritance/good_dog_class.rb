module Walkable
  def walk
    puts "I'm walking."
  end
end

module Swimmable
  def swim
    puts "I'm swimming."
  end
end

module Climbable
  def climb
    puts "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    puts "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---Animal method lookup---"
puts Animal.ancestors
puts "---GoodDog method lookup---"
puts GoodDog.ancestors

puts " "
fido = GoodDog.new
fido.speak
fido.walk
fido.swim