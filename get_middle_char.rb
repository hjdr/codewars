
=begin
You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.
=end

def get_middle(input_str)
  str_length = input_str.length
  str_middle = str_length / 2
  if str_length % 2 != 0
    return input_str[str_middle]
  end
  if str_length % 2 == 0
    return input_str[str_middle-1..str_middle]
  end
end
