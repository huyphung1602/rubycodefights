# Search a sorted array in O(lg(n)) time
def binarySearch(array, value, from=0, to=nil)
  if to == nil
    to = array.count - 1
  end

  mid = (from + to) / 2

  if to == from && value != array[mid]
    return "Not found"
  end

  if value < array[mid]
    binarySearch(array, value, from, mid - 1)
  elsif value > array[mid]
    binarySearch(array, value, mid + 1, to)
  else
    mid
  end
end

# Testcase
a = 15.times.map { rand(100) }
a = a.sort
print a
puts

position_1 = rand(14)
compare_1 = a[position_1]

position_2 = rand(14)
compare_2 = a[position_2]

# Search compare_1
puts "Search #{compare_1}"
position = binarySearch a, compare_1
if position == position_1
  puts "Search successfully, position: #{position}"
else
  puts "Error fail on searching #{compare_1}, position: #{position}"
end

# Search compare_2
puts "Search #{compare_2}"
position = binarySearch a, compare_2
if position == position_2
  puts "Search successfully, position: #{position}"
else
  puts "Error fail on searching #{compare_2}, position: #{position}"
end

# Search 10
puts "Search 10"
position = binarySearch a, 10
puts "Position: #{position}"