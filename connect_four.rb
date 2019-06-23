
def who_is_winner(pieces_position_list)
end


ConnectFour = Class.new

class ConnectFour
  attr_reader :pieces_position_list, :A, :B, :C, :D, :E, :F, :G, :grid

  def initialize(pieces_position_list)
    @pieces_position_list = pieces_position_list
    @A, @B, @C,@D, @E, @F, @G = 0, 1, 2, 3, 4, 5, 6
    @grid = [[],[],[],[],[],[],[]]
    @grid_height = 6
  end

  def slot_pieces_into_grid
    @pieces_position_list.each do |piece|
      @grid[instance_variable_get("@#{piece[0]}")] << piece[2..-1]
    end
  end

  def vertical_win(colour)
    @grid.each do |column| score_counter = 0
      column.each do |piece|
        piece == colour ? score_counter += 1 : score_counter = 0
        return colour if score_counter == 4
      end
    end
  end
  
  def horizontal_win(colour)
    score_counter, position = 0, 0
    while position < 6
      @grid.each do |column| 
        column[position] == colour ? score_counter += 1 : score_counter = 0
        return colour if score_counter == 4
      end
      position += 1
    end
  end

  def diagonal_win_x_axis(colour)
    counter, score_counter = 0, 0
    @grid.each do
      column, row = 0, 0
      column += counter
      (@grid.length - column).times do
        @grid[column][row] == colour ? score_counter += 1 : score_counter = 0
        return colour if score_counter == 4
        column += 1
        row += 1
      end
      counter += 1
    end
  end

  def diagonal_win_y_axis(colour)
    counter, score_counter = 0, 0
    (@grid_height - 3).times do
      column, row = 0, 0
      row += counter
      (@grid_height - row).times do
        @grid[column][row] == colour ? score_counter += 1 : score_counter = 0
        return colour if score_counter == 4
        column += 1
        row += 1
      end
      counter += 1
    end
  end

  

end


