=begin
In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
- All numbers are valid Int32, no need to validate them.
- There will always be at least one number in the input string.
- Output string must be two numbers separated by a single space, and highest number is first.
=end

def high_and_low(numbers_string)
  string_output = numbers_string.split(" ")
  int_array = []
  string_output.each { |element|
  int_array << element.to_i }
  int_array.sort! { |element1, element2| element2 <=> element1 }
  output = int_array[0].to_s + " " + int_array[-1].to_s
  return output
end
