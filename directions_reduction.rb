=begin
Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed (W<->E or S<->N side by side).

The Haskell version takes a list of directions with data Direction = North | East | West | South. The Clojure version returns nil when the path is reduced to nothing. The Rust version takes a slice of enum Direction {NORTH, SOUTH, EAST, WEST}.
=end

def dirReduc(arr)
  new_arr, counter = arr, 0
  while counter < new_arr.length
    counter = 0
    new_arr = arr.each_with_index{ |direction, index|
      if direction == "SOUTH" && arr[index +1] == "NORTH"
        arr.delete_at(index)
        arr.delete_at(index)
      elsif direction == "NORTH" && arr[index +1] == "SOUTH"
        arr.delete_at(index)
        arr.delete_at(index)
      elsif direction == "WEST" && arr[index +1] == "EAST"
        arr.delete_at(index)
        arr.delete_at(index)
      elsif direction == "EAST" && arr[index +1] == "WEST"
        arr.delete_at(index)
        arr.delete_at(index)
      else
        counter +=1
      end }
    end
   new_arr
end
