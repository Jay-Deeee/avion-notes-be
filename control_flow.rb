# CONTROL FLOW

if # condition is true/met
  # logic
elsif

else

end

# ternary operator for if/else statements
# condition ? exprIfTrue : exprIfFalse


age = 28

if age < 18
  puts "Young"
elsif age >= 18 && age < 60
  puts "Adult"
elsif age >= 60 && age < 100
  puts "Old"
else
  puts "Super Old"
end


case
when age < 18
  puts "Young"
when age >= 18 && age < 60
  puts "Adult"
when age >= 60 && age < 100
  puts "Old"
else
  puts "Super Old"
end


response = [
  {
    name: "Mateo",
    age: 14
  }
]

if response
  response.each { |user| puts "User found is: user[:name]" }
else
  puts "No user found"
end

# ternary operator from
# data = response ? response.each { |user| puts "User found is: user[:name]" } : puts "No user found"
# puts data
