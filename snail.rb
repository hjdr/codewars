

def snail(array)
  arr_size, subarr_size, output_arr = array.size, array[0].size, []
  if arr_size < 3
    array.each { |element| output_arr << element }.flatten!
  else arr_size >= 3
    output_arr << array[0][0..subarr_size]
    array.each { |element| output_arr << element[-1] if array.index(element).between?(1, arr_size -2) }
    output_arr << array[-1][0..subarr_size]
    array.reverse.each { |element| output_arr << element[0] if array.index(element).between?(1, arr_size -2) }
    output_arr
  end
end


test_arr = [[1, 2, 3, "x"], [4, 5, 6, "p"], [7, 8, 9, "y"], [10, 11, 12, "b"]]


test_arr.each { |element| puts test_arr.index(element) }


print snail(test_arr)
