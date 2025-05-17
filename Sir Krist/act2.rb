#!/usr/bin/env ruby

puts "Enter number:"
num = gets.chomp.to_i

if num < 0
  puts "Number is not within range."
elsif num >= 0 && num <= 50
  puts "#{num} is between 0 and 50."
elsif num > 50 && num <= 100
  puts "#{num} is between 51 and 100."
else
  puts "#{num} is greater than 100."
end