=begin
Complete the function power_of_two/powerOfTwo (or equivalent, depending on your language) that determines if a given non-negative integer is a power of two.
=end

def power_of_two?(num)
  output, counter = 0, 0
  while num > output
    output = 2**counter
    counter +=1
  end
    num == output
end
