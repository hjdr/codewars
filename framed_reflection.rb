=begin
You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame.
=end


def mirror(text)
  text_array = text.split(" ").each(&:reverse!)
  length = text_array.max_by(&:length).length
  puts "*" * (length + 6)
  text_array.each { |element| puts "*" + element + "*" }
  puts "*" * (length + 6)
end



test = mirror("hello world how are you")
