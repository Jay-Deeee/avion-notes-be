# OOP => object-oriented programming
# irb -r ./oop.rb

# prototype or template
# getter => attr_reader => get the values of an attribute
class Employee
  attr_accessor :e_name, :e_age, :e_is_active # => combination of attr_reader & attr_writer
  # attr_reader :e_name, :e_age, :e_is_active
  # attr_writer :e_name, :e_age, :e_is_active

  def initialize(name, age, is_active)
    @e_name = name # @e_name => instance variable = "@" allows variable to be called outside of the object
    @e_age = age
    @e_is_active = is_active
  end

  def resign
    @e_is_active = false
    @e_is_active ? "#{e_name} is active" : "#{e_name} has resigned"
  end

  def re_employ
    @e_is_active = true
    @e_is_active ? "#{e_name} has been re-hired" : "#{e_name} has not been accepted"
  end

  # attr_reader does these
  # def e_name => name can be anything but if using "getter" it defaults to these
  #   @e_name
  # end
  
  # def e_age
  #   @e_age
  # end

  # def e_is_active
  #   @e_is_active
  # end

  # attr.writer does these => syntax and naming will be similar to reader but adds =() or = "" to set new attributes
  # def e_name=(new_name)
  #   @e_name = new_name
  # end

  # def e_age=(new_age)
  #   @e_age = new_age
  # end

  # def e_is_active=(new_status)
  #   @e_is_active = new_status
  # end
end

emp_one = Employee.new("Abigail Capco", 20, true) # object 1
# call with => emp_one
# emp_one.e_name => method to call the name
# emp_one.e_age
# emp_one.e_is_active

puts emp_one
puts "Name: #{emp_one.e_name}"
puts "Age: #{emp_one.e_age}"
puts "Activity Status: #{emp_one.e_is_active}"

# reassign with =>
# emp_one.e_name=()
# emp_one.e_age=()
# emp_one.e_is_active=()

emp_one.e_name=("Abby")
# emp_one.e_name = "Abby" => syntactic sugar = features of a language for more readable code
emp_one.e_age=(22)
# emp_one.e_age = 22

puts
puts "New name: #{emp_one.e_name}"
puts "New age: #{emp_one.e_age}"

emp_two = Employee.new("Jeston Paas", 25, true) # object 2
emp_three = Employee.new("Justine Banongon", 28, true) # object 3

puts
puts emp_two.inspect
puts emp_three.inspect

puts
puts "------------------------------------------------------------------------------------------------"
puts

# ----------------------------------------------------------------------------------------------------------------------------------------------------------

# 4 pillars of OOP
# Inheritance, Abstraction, Encapsulation, Polymorphism
# class method types => public, private, protected

# INHERITANCE
class Animal 
  attr_accessor :a_name, :a_age, :g_color

  def initialize(name, age)
    @a_name = name
    @a_age = age
  end

  def speak # this is a public method
    "Hello!"
  end

  def diff_speak
    "This will not be printed"
    greet = "big hello!"
    new_sound(greet) # this is how to call private methods
  end

  private # this is how to define private methods, can only be called within the class

  def new_sound(el) # this is a private method => this will not be inherited by subclasses
    el.upcase!()
  end
end

# GoodDog => subclass; Animal => superclass, can only have 1 superclass
class GoodDog < Animal
  def initialize(name, age, color) # how to add arguments into subclasses
    super(name, age)
    @g_color = color
  end

  def speak
    super + " Woof" # turns into "Hello! Woof!" (looks for def speak in the parent class and adds)
  end
end
# class GoodDog < Animal; end <= can also be written like this if no content

class BadCat < Animal; end

# Animal.subclasses => [BadCat, GoodDog]

sparky = GoodDog.new("Browny", 3, "White") # instance or object => actual thing
puts sparky.a_name
puts sparky.a_age
puts sparky.g_color

puts
puts "------------------------------------------------------------------------------------------------"
puts

# ----------------------------------------------------------------------------------------------------------------------------------------------------------

# ABSTRACTION <= mix-ins/mixins

class EmployeeTwo
  attr_accessor :e_name, :e_position, :e_salary

  def initialize(name, position, salary)
    @e_name = name
    @e_position = position
    @e_salary = salary
  end
end

module DevScheduler # this is how to declare a module/mix-in
  def schedule
    "10am - 8pm"
  end
end

module SGScheduler
  def schedule
    "4am - 8pm"
  end
end

class FrontEnd < EmployeeTwo
  include DevScheduler # this is how to call a mix-in
end

class BackEnd < EmployeeTwo
  include DevScheduler
end

class SecurityGuard < EmployeeTwo
  include SGScheduler
end

fe = FrontEnd.new("Allan", "FrontEnd Engineer", 100000)
puts fe.e_name
puts fe.e_position
puts fe.e_salary
puts fe.schedule

puts

be = BackEnd.new("Glenn", "BackEnd Engineer", 150000)
puts be.e_name
puts be.e_position
puts be.e_salary
puts be.schedule

puts

sg = SecurityGuard.new("Justine", "Security Guard", 50000)
puts sg.e_name
puts sg.e_position
puts sg.e_salary
puts sg.schedule

# ----------------------------------------------------------------------------------------------------------------------------------------------------------

# ENCAPSULATION

class Transaction
  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end

  def total # encapsulation binds 2 (or more) attributes to one object and can be called separately
    @quantity * @price
  end
end

transact = Transaction.new(5, 100)
puts transact.total

# ----------------------------------------------------------------------------------------------------------------------------------------------------------

# POLYMORPHISM
# calling the same method with different objects/forms
# through inheritance

class AnimalTwo
  def speak
    "Hello!"
  end
end

class Dog < AnimalTwo
  def speak
    "Arf!"
  end
end

poly_cat = AnimalTwo.new
puts poly_cat.speak # prints "Hello!"

poly_dog = Dog.new
puts poly_dog.speak # prints "Arf!"
# both methods call speak but in different forms


# through duck typing
# if an object acts like a duck (or something else like an array), treat it like a duck (or an array)

class Cat
  def speak
    "Meow"
  end
end

class Owl
  def speak
    "Whoo"
  end
end

duck_cat = Cat.new
puts duck_cat.speak # prints "Meow"

duck_owl = Owl.new
puts duck_owl.speak # prints "Whoo"
# same method but different result
