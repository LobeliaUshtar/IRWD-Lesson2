# bob = Person.new
# bob.hi

# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0> from (irb):8 from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>' - See more at: http://www.gotealeaf.com/books/ruby/read/inheritance#sthash.gAnCkxym.dpuf

# problem is that method 'hi' is private inside of class 'Person' and therefore can't be accessed outside of the class
# fix is to 1) move 'hi' above the private or 2) have a public method call on 'hi' (something like 'greeting') and have that new one called outside of the class

class Person1
  def hi
    puts "Hi!"
  end

  private

end

bob = Person1.new
bob.hi

class Person2
  def greeting
    hi
  end

  private
  def hi
    puts "Hi!"
  end
end

bob = Person2.new
bob.greeting