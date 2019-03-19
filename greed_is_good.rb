
def score(dice)
  c1, c2, c3, c4, c5, c6 = 0, 0, 0, 0, 0, 0
  count_arr = [c1, c2, c3, c4, c5, c6]
  dice.each{ |dice|
    dice_face, arr_count = 1, 0
    count_arr.each {|ctr|
      count_arr[arr_count] += 1 if dice == dice_face
      puts "counter = #{count_arr[arr_count]} : dice face = #{dice_face}"
      dice_face += 1
      arr_count += 1
    } }
end

score([2, 2, 2, 4, 5, 6])
