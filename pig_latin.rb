

def pig_it(text)
  output = []
  text.split.each{ |element| element.match(/[A-Za-z]/) ? output << element[1..-1] + element[0] + "ay" : output << element }
  print output
end


pig_it("Hello world !")
