#!/usr/bin/env ruby

module Swimmable
  def swim
    puts "I'm swimming"
  end
end

module Slippable
  def slip
    puts "I'm slipping"
  end
end

class Animal
  def speak
    puts "Hello"
  end
end

# GoodDog is a subclass of Animal and can inherit its methods
class GoodDog < Animal
  def bark
    puts "howl"
  end

  def speak
    super
    puts "I'm a Good dog."
  end
end

class RogueDog < GoodDog
  def bite
  end
end

# a subclass can only have one parent class but can have as many modules as you like
class Fish < Animal
  include Swimmable
  include Slippable
end

g1 = Animal.new
g2 = GoodDog.new

# namespacing
# alternatively, can just be written as class Language::Ruby
module Language
  class Ruby
    def info
      puts "Ruby Programming Language"
    end
  end
end

# This is how to call a class that is under a module
class Rails < Language::Ruby
  def info
    puts "Framework that uses the Ruby Language"
  end
end

class Person
  def initialize(age)
    @age = age
  end

  def <(person)
    age < (person.real_age)
  end

  # all methods under 'private' cannot be accessed or inherited outside of the class "Person"
  private
  def get_age
    puts "I am #{@age} years old"
  end

  # similar to private methods but you can call them on an object directly
  protected
  def real_age
    puts "I am actually #{@age + 10} years old"
  end
end
