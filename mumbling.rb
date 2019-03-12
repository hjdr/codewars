
=begin
The examples below show you how to write function accum:
accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"

The parameter of accum is a string which includes only letters from a..z and A..Z.
=end

def accum(string_to_mumble)
  counter = 0
  mumble_string = ""
	string_to_mumble.downcase!.each_char { |char|
    counter += 1
    char *= counter
    char.sub!(char[0], char[0].upcase)
    mumble_string += char
      if counter < string_to_mumble.length
        mumble_string += "-"
      end
    }
    return mumble_string
 end
