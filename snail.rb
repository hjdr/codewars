def snail(array)
  arr_size, subarr_size, output_arr, iterate_array = array.size, array[0].size, [], [0, 1, 2]
  (arr_size %2 == 0 ? arr_size /2 : ((arr_size /2) +1) ).times {
  output_arr << array[iterate_array[0]][iterate_array[0]..subarr_size -iterate_array[1]]
  array.each { |element| output_arr << element[-iterate_array[1]] if array.index(element).between?(iterate_array[1], arr_size -iterate_array[2]) }
  output_arr << array[-iterate_array[1]].reverse[iterate_array[0]..subarr_size -iterate_array[1]]
  array.reverse.each { |element| output_arr << element[iterate_array[0]] if array.index(element).between?(iterate_array[1], arr_size -iterate_array[2]) }
  iterate_array.map! { |element| element + 1 } }
  output_arr.pop if arr_size %2 != 0
  output_arr.flatten!
end

test_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print snail(test_arr)



[1, 2, 3, 6, 9, 8, 7, 4, 5]
[1, 2, 3, 6, 9, 9, 8, 7, 7, 4, 5]