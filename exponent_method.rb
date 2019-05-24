def power(base, exponent)
  if exponent > 0
    output = base
    (exponent -1).times { output *= base }
    output
  elsif exponent == 0
    1
  else
    nil
  end
end


puts power(10, 0)
