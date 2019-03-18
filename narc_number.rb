=begin
A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).
Your code must return true or false depending upon whether the given number is a Narcissistic number in base 10.
Error checking for text strings or other invalid inputs is not required, only valid integers will be passed into the function.
=end

def narcissistic?(value)
  val_str = value.to_s
  value == val_str.chars.map{ |num| num.to_i ** val_str.length }.inject(:+)
end
