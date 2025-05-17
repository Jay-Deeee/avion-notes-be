#!/usr/bin/env ruby

input = ""

while input.upcase != "STOP"
  puts "Enter command (type STOP to end process):"
  input = gets.chomp

  if input.upcase != "STOP"
    puts "You said: #{input}. Do you want to talk more?"
  else
    puts "Stopped process."
  end
end