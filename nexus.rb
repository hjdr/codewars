=begin
Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of users, and find the nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user. For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.
=end

def nexus(test)
  sorted_array = test.sort_by{ |key, value|
    if key > value
      key - value
    else
      value - key
    end }
  array_equals = []
  sorted_array.each{ |key, value|
  array_equals << [key, value] if key == value }
  array_equals.sort_by!{ |key, value| key }
  array_closest = []
  sorted_array.each { |key, value|
    if sorted_array[0][0] > sorted_array[0][1]
      difference = sorted_array[0][0] - sorted_array[0][1]
    else
      difference = sorted_array[0][1] - sorted_array[0][0]
    end
    if key > value
      array_closest << [key, value] if key - value == difference
    else
      array_closest << [key, value] if value - key == difference
    end }
  array_closest.sort_by!{ |key, value| key }
  if array_equals != []
    array_equals[0][0]
  else
    array_closest[0][0]
  end
end
