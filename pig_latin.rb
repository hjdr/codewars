=begin
Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
=end

def pig_it(text)
output = []
  text.split.each{ |element| element.match(/[A-Za-z]/) ? output << element[1..-1] + element[0] + "ay" : output << element }
  output.join(" ")
end
