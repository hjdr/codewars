=begin
  In this kata you have to create all permutations of an input string and remove duplicates, if present. This means, you have to shuffle all letters from the input in all possible orders.
=end

def permutations(string)

  @output_permutations = []

  def permutate(output,input)

      @output_permutations << input if input.length == 0
      @output_permutations << input if input.length == 1

      if input.length == 2
          @output_permutations << output + input[0] + input[1]
          @output_permutations << output + input[1] + input[0]
      end

      if input.length > 2
          (0...input.length).step(1).each { |index|
              first_part = output + input[index]
              second_part = (index > 0 ? input[0..index -1] : "") + (input[index +1..-1])
              permutate(first_part, second_part)}
      end
  end

  permutate("", string)
  return @output_permutations.uniq

end
