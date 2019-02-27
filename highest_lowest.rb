def high_and_low(numbers_string)
  string_output = numbers_string.split(" ")
  int_array = []
  string_output.each { |element|
  int_array << element.to_i }
  int_array.sort! { |element1, element2| element2 <=> element1 }
  output = int_array[0].to_s + " " + int_array[-1].to_s
  return output
end
