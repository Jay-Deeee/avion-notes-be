#!/usr/bin/env ruby

class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes."
  end
end

# with frosting
class Cupcake < Confection
  def prepare
    super
    puts "Applying frosting."
  end
end

# without frosting -- inherits the methods from 'Confection' class
# id doesn't need methods
class BananaCake < Confection
end

cupcake = Cupcake.new
banana_cake = BananaCake.new

puts "Cupcake Preparation:"
cupcake.prepare

puts
puts "Banana Cake Preparation: "
banana_cake.prepare
