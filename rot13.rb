
def rot13(string)
  alphabet = ("a".."z").to_a

  output= []
  string.chars.each { |char|
    if char.match(/[A-Z]/)
      (alphabet.index(char.downcase) + 13) < alphabet.length ? index = alphabet.index(char.downcase) + 13 : index = (alphabet.index(char.downcase) + 13) - alphabet.length
      output << alphabet[index].upcase
    elsif char.match(/[a-z]/)
      (alphabet.index(char) + 13) < alphabet.length ? index = alphabet.index(char) + 13 : index = (alphabet.index(char) + 13) - alphabet.length
      output << alphabet[index]
    else
      output << char
    end }
    print output.join
end


rot13("Test")
