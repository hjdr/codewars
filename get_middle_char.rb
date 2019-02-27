
test_string = "helloyoui"

def get_middle(input_str)
  str_length = input_str.length
  str_middle = str_length / 2
  puts str_length
  puts str_middle
  
  if str_length % 2 != 0
    return input_str[str_middle]
  end
end


test = get_middle(test_string)

puts test
