
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
