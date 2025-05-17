#!/usr/bin/env ruby

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

print("Original Array: ", arr)
puts puts

new_arr = arr.select { |element| element % 2 == 0 }
print("Filtered array (divisible by 2): ", new_arr)
puts