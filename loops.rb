# LOOPS

STANDARD LOOP

arr.each do |el|
  puts el if el.is_a? String
end

BLOCK METHOD

arr.each { |el| puts el if el.is_a? String}
