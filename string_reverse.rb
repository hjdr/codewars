# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

def reverse_words(str)
 reversed_string = str.gsub(/([\w.\^$.|?*!@+()]+)/) { |match| match.reverse }
  return reversed_string
end
