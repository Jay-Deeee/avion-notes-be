# METHODS

my_string = "jino"

def convert_string(str)
  str.upcase
end

puts convert_string(my_string)


php = 56.7
usd = 1

def convert_peso(peso, us_dollar)
  result = peso * us_dollar
  less_tax(result)
end

def less_tax(res)
  res - 10
end

puts "Converted: #{convert_peso(php, usd)}"


user1 = "Jino"
user2 = "Jaime"

def greeting (first_argument, second_argument)
  "Hello #{first_argument} and #{second_argument}!"
end

puts greeting(user1, user2)