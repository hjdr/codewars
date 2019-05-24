

def permutations(string)

    @output_permutations = []

    def permutate(output,input)

        @output_permutations << input if input.length == 0
        @output_permutations << input if input.length == 1


        if input.length == 2
            puts "result:"
            print @output_permutations << output + input[0] + input[1]
            puts "\n"
            print @output_permutations << output + input[1] + input[0]
            puts "\n"
        end

        if input.length > 2
            (0...input.length).step(1).each { |index| 
                puts " ------------------------------- start"
                puts "first_part:"
                puts first_part = output + input[index]
                puts "second_part:"
                puts second_part = (index > 0 ? input[0..index -1] : "") + (input[index +1..-1])
                permutate(first_part, second_part)
                puts " ------------------------------- end"}
        end
    end

    permutate("", string)
    return @output_permutations

end

puts "\n"
print permutations("abcde")
puts "\n"