=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
=end

def persistence(n)
loop_counter = 0
  while n > 9
    int_array = n.to_s.chars.map(&:to_i)
    counter = 0
    first_no = int_array[counter] * int_array[counter +1]
    loop_counter += 1
    counter += 2
    while counter < int_array.length
      first_no *= int_array[counter]
      counter += 1
    end
    n = first_no
  end
  return loop_counter
end


persistence(4)
