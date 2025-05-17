# 1. Define a method that accepts an array. Remove every second element from the array and return the result. 
# arr = ['Hello', 'Goodbye', 'AM']

# can just use
#  array.select!.with_index { |_, i| i.even? }

puts "1."
arr = ['Hello', 'Love', 'Goodbye', 'I', 'AM', 'Venom']

def remove_evens(array)
  n = array.length
  until array.length == n / 2
    array.rotate!(2).pop
  end
  array
end

puts remove_evens(arr).inspect
puts


# 2. Define a method/function that removes from a given array of integers all the values contained in a second array.

puts "2."
integer_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
values_list = [1, 3]

def remove_from_first(first, second)
  first - second
end

puts remove_from_first(integer_list, values_list).inspect
