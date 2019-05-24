=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
=end

def persistence(n)
  counter = 0
  while n > 9
    counter +=1
    n = n.to_s.chars.map(&:to_i).inject(&:*)
  end
  return counter
end
