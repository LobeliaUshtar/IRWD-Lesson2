# Modules are collections of behavors useable in classes by way of Mixins

module Exercise2
  def proof
    puts "This shows how a module is used by a class."
  end
end

class Exercise1
  include Exercise2
end

exercise = Exercise1.new
exercise.proof