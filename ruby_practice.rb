

def permute(result,input)
    if(input.length == 0)
      return
    end
  
    if(input.length == 1)
      puts result + input[0]
      return
    end
  
    if(input.length == 2)
      result + input[0] + input[1]
      result + input[1] + input[0]
      return
    end
    

    (0...input.length).step(1).each do |index|
      firstpart = result + input[index]
      secondpart = (index > 0 ? input[0..(index-1)] : '') + (input[(index+1)..-1] || '')
      permute(firstpart,secondpart)
    end
  end

  print permute("", "abcde")
