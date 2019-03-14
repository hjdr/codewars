=begin
You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame.
=end

def mirror(text)
  text_array = text.split(" ").each(&:reverse!)
  length = text_array.max_by(&:length).length + 4
  output_string = "*" * length + "\n"
  text_array.each { |element| output_string += "*" + " " + element + " " * ((length - element.length) - 3) + "*\n" }
  output_string += "*" * length
end
