class Laptop
  attr_accessor :e_brand, :e_model, :e_in_stock

  def initialize(brand, model, in_stock)
    @e_brand = brand
    @e_model = model
    @e_in_stock = in_stock
  end

  def re_stock
    @e_in_stock = !@e_in_stock
  end
end
