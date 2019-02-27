def reverse_words(str)
  split_array = str.split(" ")
  counter = 0
  reverse_str = ""
    split_array.each { |word|
    word.reverse!
    reverse_str += word.to_s
    counter += 1
      if counter < split_array.length
      reverse_str += " "
      end
    }
  return reverse_str
end

output = reverse_words('The quick brown fox jumps over the lazy dog.')

puts output


s = 'The quick brown fox jumps over the lazy dog.'

new_string = s.gsub(/([\w.\^$.|?*"!@+()]+)/) { |match| match.reverse }

print new_string
