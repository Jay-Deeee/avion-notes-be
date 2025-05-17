# 1. 
puts "1."

class Profile
  attr_accessor :full_name, :age, :work, :address

  def initialize(full_name, age, work, address)
    @full_name = full_name
    @age = age
    @work = work
    @address = address
  end
end
  
my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')
puts my_profile.full_name
my_profile.full_name = 'Juan Cruz'
my_profile.age = 25
my_profile.work= 'Software Engineer'
puts my_profile.full_name
puts my_profile.age
puts my_profile.work
puts my_profile.address
puts


# 2. 
puts "2."

class Vehicle
  attr_accessor :brand, :model, :year

  def initialize(brand, model)
    @brand = brand
    @model = model
  end
end

class Car < Vehicle
  def initialize(brand, model, year)
    super(brand, model)
    @year = year
  end
end
car = Car.new("Toyota", "Camry", 2023)
puts car.brand
puts car.model
puts car.year
