
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


end


