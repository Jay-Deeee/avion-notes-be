arr1 = [34, 15, 88, 2]
arr2 = [34, -345, -1, 100]

def find_smallest_integer(array)
  smallest = array[0]
  for num in array
    if num < smallest
      smallest = num
    end
  end
  smallest
end

puts find_smallest_integer(arr1)
puts find_smallest_integer(arr2)
