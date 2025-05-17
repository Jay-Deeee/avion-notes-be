# 1. Create a method that accepts 2 integer values (age, score). Return true if the age is more than 55 and score is more than 7. Return false if not. 
# give example using ternary, if-else and case-when. 
# Inputs => 
# a = (61, 12)
# b = (55, 27)
# c = (-1, 15)

a1 = 61
s1 = 12

a2 = 55
s2 = 27

a3 = -1
s3 = 15

def if_else(age, score)
  if age > 55 && score > 7
    true
  else
    false
  end
end

def case_when(age, score)
  case
  when age > 55 && score > 7
    true
  else
    false
  end
end

def ternary(age, score)
  age > 55 && score > 7 ? true : false
end

puts "If-Else: #{if_else(a1, s1)}"
puts "Case-When: #{case_when(a2, s2)}"
puts "Ternary Operator: #{ternary(a3, s3)}"
