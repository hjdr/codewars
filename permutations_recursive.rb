def factorial(n)
    (1..n).inject {|product, n| product * n }
  end
   
=begin 
  def factorial(n)
      if n == 0
          1
      else
          n * factorial(n-1)
      end
  end
   
  puts factorial(5)

=end

puts factorial(5)