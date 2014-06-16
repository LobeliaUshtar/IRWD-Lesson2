# class Person
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
  
# end

# bob = Person.new("Steve")
# bob.name = "Bob"

# name is currently only readable outside of the class.  We need to either 1) add attr_writer :name or 2) change the attr_reader to attr_accessor (2 better)

class Person1
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end
  
end

bob = Person1.new("Steve")
bob.name = "Bob"

class Person2 # this is much better
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
end

bob = Person2.new("Steve")
bob.name = "Bob"