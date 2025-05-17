# arr = [1, 2, 3]
# arr.each { |el| puts el }

# 1.
puts "1."
arr = [5, 3, 2, 1, 6, 4, 7]

def sort(arr)
  n = arr.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end
  arr
end

sorted_arr = sort(arr)
puts "#{sorted_arr}"
puts

# 2.
puts "2."
user = [
  {
    name: 'John',
    age: 25
  }, 
  {
    name: 'Jane',
    age: 30
  },
  {
    name: 'Jim',
    age: 27
  }
]

puts "Original Array: #{user}"

names = user.map { |u| u[:name] }
puts "#{names}"

user.each { |u| u [:age] += 10 }
puts user
puts

# 3.
puts "3."
arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

even_numbers = arr2.select { |num| num.even? }
puts "#{even_numbers}"

arr2.delete(5)
puts "#{arr2}"
