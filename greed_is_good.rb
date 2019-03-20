=begin
Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.
=end

def score(dice)
  count_arr = [0, 0, 0, 0, 0, 0]
  dice.each{ |dice|
    dice_face, arr_count = 1, 0
    count_arr.each {|ctr|
      count_arr[arr_count] += 1 if dice == dice_face
      dice_face += 1
      arr_count += 1 } }
  if count_arr[0] < 3
    count_arr[0] *= 100
  elsif count_arr[0] == 3
    count_arr[0] = 1000
  elsif count_arr[0].between?(3,6)
    count_arr[0] = ((count_arr[0] - 3) * 100) + 1000
  else count_arr[0] = 0 end
  if count_arr[4] < 3
    count_arr[4] *= 50
  elsif count_arr[4] == 3
    count_arr[4] = 500
  elsif count_arr[4].between?(3,6)
    count_arr[4] = ((count_arr[4] - 3) * 50) + 500
  else count_arr[4] = 0 end
  count_arr[1] > 2 ? count_arr[1] = 200 : count_arr[1] = 0
  count_arr[2] > 2 ? count_arr[2] = 300 : count_arr[2] = 0
  count_arr[3] > 2 ? count_arr[3] = 400 : count_arr[3] = 0
  count_arr[5] > 2 ? count_arr[5] = 600 : count_arr[5] = 0
  count_arr.inject(:+)
end
