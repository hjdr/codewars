def reverse_words(str)
 reversed_string = str.gsub(/([\w.\^$.|?*!@+()]+)/) { |match| match.reverse }
  return reversed_string
end
