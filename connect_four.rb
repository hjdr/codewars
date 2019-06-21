
ConnectFour = Class.new

class ConnectFour
  attr_reader :pieces_position_list, :A, :B, :C, :D, :E, :F, :G, :grid

  def initialize(pieces_position_list)
    @pieces_position_list = pieces_position_list
    @A, @B, @C,@D, @E, @F, @G = 0, 1, 2, 3, 4, 5, 6
    @grid = [[],[],[],[],[],[],[]]
  end

  def slot_pieces_into_grid
    @pieces_position_list.each do |piece|
      @grid[instance_variable_get("@#{piece[0]}")] << piece[2..-1]
    end
  end

  def vertical_win_yellow
    @grid.each do |column| yellow_counter = 0
      column.each do |piece|
        piece == "Yellow" ? yellow_counter += 1 : yellow_counter = 0
        return "Yellow" if yellow_counter == 4
      end
    end
  end
  
  def vertical_win_red
    @grid.each do |column| red_counter = 0
      column.each do |piece|
        piece == "Red" ? red_counter += 1 : red_counter = 0
        return "Red" if red_counter == 4
      end
    end
  end
  
  def horizontal_win_yellow
    yellow_counter, position = 0, 0
    while position < 6
      @grid.each do |column| 
        column[position] == "Yellow" ? yellow_counter += 1 : yellow_counter = 0
        return "Yellow" if yellow_counter == 4
      end
      position += 1
    end
  end

  def horizontal_win_red
    red_counter, position = 0, 0
    while position < 6
      @grid.each do |column| 
        column[position] == "Red" ? red_counter += 1 : red_counter = 0
        return "Red" if red_counter == 4
      end
      position += 1
    end
  end

  def diagonal_win_yellow
    counter, yellow_counter = 0, 0
    @grid.length.times do
      column, row = 0, 0
      column += counter
      while row < 6
        @grid[column][row] == "Yellow" ? yellow_counter += 1 : yellow_counter = 0
        return "Yellow" if yellow_counter == 4
        column += 1
        row += 1
      end
      counter += 1
    end
  end
end


