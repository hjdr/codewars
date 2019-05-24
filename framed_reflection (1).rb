=begin
You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame.
=end

def mirror(text)
  text_array = []
  text_array << text.split(" ")
  #test = text_array.each { |element| puts element.reverse }
end

test = mirror("hello world how are you")
