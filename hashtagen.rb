

def generateHashtag(str)
  str = str.split.join
  if str.length > 140 || str.empty?
    puts false
  else
    puts str
  end
end

generateHashtag(" ")
