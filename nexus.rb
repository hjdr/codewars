def nexus(test)
  sorted_array = test.sort_by{ |key, value|
  if key > value
    key - value
  else
    value - key
  end }
  print sorted_array
  array_equals = []
  sorted_array.each{ |key, value|
    array_equals << [key, value] if key == value }
  print array_equals
  return array_equals[0][0] if array_equals != nil
end


hash_test = {
  1 => 2,
  2 => 1,
  3 => 8,
  10 => 16,
  8 => 6,
  24 => 5,
  30 => 30,
  14 => 14
}

test = nexus(hash_test)
puts "\n"
puts test
