#!/usr/bin/env ruby

# function to find if a number is a perfect square without using Math.sqrt

puts "Enter number:"
num = gets.chomp.to_i

if num < 0 
  puts "Value is negative."
else num > 0
  i = 1

  while i * i <= num
    if i * i == num
      puts "#{num} is a perfect square."
      break
    end
    i += 1
  end

  puts "#{num} is not a perfect square." if i * i != num
end