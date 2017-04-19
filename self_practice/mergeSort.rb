def mergeSort(array)
  if array.count <= 1
    return array
  end

  # Divide
  mid = array.count/2
  left_side = mergeSort array.slice(0, mid)
  right_side = mergeSort array.slice(mid, array.count - mid)

  # Compare and sort from 2 side
  array = Array.new
  left_index = 0
  right_index = 0

  while left_index < left_side.count && right_index < right_side.count
    left_number = left_side[left_index]
    right_number = right_side[right_index]

    # Compare left and right, choose the smaller number

    if left_number <= right_number
      array << left_number
      left_index += 1
    else
      array << right_number
      right_index += 1
    end
  end

  # There will be one array remain (left_side or right_side)
  while left_index < left_side.count
    array << left_side[left_index]
    left_index += 1
  end

  while right_index < right_side.count
    array << right_side[right_index]
    right_index += 1
  end

  return array
end

# Testcase
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle
print b
puts

# Mergesort operates in new array
# So we need to reassign
b = mergeSort b
puts "mergeSort"
print b