

def snail(array)
  arr_size, output_arr = array.size, []
  if arr_size < 3
    array.each { |element| output_arr << element }.flatten!
  else arr_size >= 3
    output_arr << array[0]
    array.each { |element| 
      if array.index(element) > 0 && array.index(element) < arr_size -1
        output_arr << element[-1]
      end }
    output_arr << array[-1]
  end
end


test_arr = [[1,2,3, "x"],[4,5,6, "p"],[7,8,9, "y"]]


test_arr.each { |element| puts test_arr.index(element) }


print snail(test_arr)
