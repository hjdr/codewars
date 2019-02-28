
=begin
The examples below show you how to write function accum:
accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"

The parameter of accum is a string which includes only letters from a..z and A..Z.
=end


string_to_mumble = 'The quick brown fox jumps over the lazy dog.'

mumble_string = ""
counter = 1

test = string_to_mumble.each_char { |char|
    counter.times {
      x = char + char
      mumble_string + x
      }
      counter += 1
    }

print mumble_string

x = "h"

print x * 7
