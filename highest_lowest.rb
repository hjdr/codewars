def high_and_low(numbers_string)
  string_output = numbers_string.split(" ")
  int_array = []
  string_output.each { |element|
  int_array << element.to_i }
  print int_array
end


test = "10 13 14 65 40"

high_and_low(test)

# -9 -2 432 942 8 51
