def mergeSort(array)
  if array.count <= 1
    return array
  end

  # Divide
  mid = array.count/2
  left_side = mergeSort array.slice(0, mid)
  right_side = mergeSort array.slice(mid, array.count - mid)

  # Compare and sort from 2 side
  result_array = Array.new
  left_index = 0
  right_index = 0

  while left_index < left_side.count && right_index < right_side.count
    left_number = left_side[left_index]
    right_number = right_side[right_index]

    # Compare left and right, choose the smaller number

    if left_number <= right_number
      result_array << left_number
      left_index += 1
    else
      result_array << right_number
      right_index += 1
    end
  end

  # There will be one result_array remain (left_side or right_side)
  while left_index < left_side.count
    result_array << left_side[left_index]
    left_index += 1
  end

  while right_index < right_side.count
    result_array << right_side[right_index]
    right_index += 1
  end

  return result_array
end

# Test
100.times do
  test_a = 30.times.map { rand(1000) }
  raise "You're wrong on ms" unless test_a.sort == mergeSort(test_a)
end