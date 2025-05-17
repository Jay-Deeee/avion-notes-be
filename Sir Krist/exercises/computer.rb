#!/usr/bin/env ruby

class Computer
  attr_reader :brand
  # short hand for
  # def brand
  #   @brand
  # end

  attr_writer :brand
  # short hand for
  # def brand=(new_brand)
  #   @brand = new_brand
  # end

  # attr_accessor :brand - shorthand to combine both attr_reader and attr_writer
  # can put multiple attributes in any short hand
  # attr_accessor :brand, :model, :price

  def initialize(brand, model, price)
    @brand = brand
    @model = model
    @price = price
  end

  def model
    @model
  end

  def price
    @price
  end
end
