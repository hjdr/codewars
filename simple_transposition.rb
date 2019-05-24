=begin
Simple transposition is a basic and simple cryptography technique. We make 2 rows and put first a letter in the Row 1, the second in the Row 2, third in Row 1 and so on until the end. Then we put the text from Row 2 next to the Row 1 text and thats it.

Complete the function that recieves a string and encrypt it with this simple transposition.
=end

def simple_transposition(text)
 row1, row2 = [], []
 text.split("").each_with_index { |element, index| row1 << element if index % 2 == 0 }
 text.split("").each_with_index { |element, index| row2 << element if index % 2 != 0 }
 output_string = row1.join + row2.join
end


test = simple_transposition("Simple text")
