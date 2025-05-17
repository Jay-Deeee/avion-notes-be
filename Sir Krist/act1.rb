#!/usr/bin/env ruby

arr = [1, 3, 5, 7 ,9 ,11]
number = 3

print("Array: ", arr)
print("\n Number: ", number)

if arr.include? number
  puts "\n Number is included in array."
else
  puts "\n Number is not included in array."
end