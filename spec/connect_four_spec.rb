require './connect_four.rb'

describe ConnectFour do
  
  before :each do 
    @game = ConnectFour.new(["A_Red", "B_Yellow", "A_Red", "B_Yellow", "A_Red", "B_Yellow", "G_Red", "B_Yellow"])
    @game.slot_pieces_into_grid
  end

  describe "#pieces_position_list" do
    it "is an array of strings outlining the pieces position " do
      expect(@game.pieces_position_list).to eq(["A_Red", "B_Yellow", "A_Red", "B_Yellow", "A_Red", "B_Yellow", "G_Red", "B_Yellow"])
    end
  end

  describe "@A, @B, @C,@D, @E, @F, @G" do
    it "assigns to integers0-6 respectively" do
      expect(@game.A).to eq(0)
      expect(@game.B).to eq(1)
      expect(@game.C).to eq(2)
      expect(@game.D).to eq(3)
      expect(@game.E).to eq(4)
      expect(@game.F).to eq(5)
      expect(@game.G).to eq(6)
    end
  end

  describe "grid" do
    it "is an array with 7 sub-arrays" do
      expect(@game.grid.length).to eq(7)
    end
  end

  describe "slot_pieces_into_grid" do
    it "iterates over pieces_position_list and adds to grid" do
      expect(@game.grid).to eq([["Red", "Red", "Red" ],["Yellow", "Yellow", "Yellow", "Yellow" ],[],[],[],[],["Red"]])
    end
  end

  describe "#vertical_win_yellow" do
    it "calculates if four sequential yellow pieces are in a vertical row" do
      expect(@game.vertical_win_yellow).to eq("Yellow")
    end
  end

  describe "#vertical_win_yellow" do
    it "calculates if four sequential yellow pieces are in a vertical row" do
      @game = ConnectFour.new(["A_Red", "G_Yellow", "G_Red", "C_Yellow", "C_Red", "G_Yellow", "B_Red", "B_Yellow", "C_Red", "G_Yellow", "A_Red", "B_Yellow", "D_Red", "G_Yellow", "F_Red", "G_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.vertical_win_yellow).to eq("Yellow")
    end
  end

  describe "#vertical_win_yellow" do
    it "calculates if four sequential yellow pieces are in a vertical row" do
      @game = ConnectFour.new(["A_Red", "C_Yellow", "C_Red", "B_Yellow", "A_Red", "B_Yellow", "D_Red", "B_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.vertical_win_yellow).not_to eq("Yellow")
    end
  end

  describe "#vertical_win_red" do
    it "calculates if four sequential red pieces are in a vertical row" do
      @game = ConnectFour.new(["A_Red", "C_Yellow",  "D_Red", "B_Yellow"  "C_Red", "B_Yellow", "D_Red", "A_Yellow", "A_Red", "G_Yellow", "D_Red", "B_Yellow", "D_Red", "B_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.vertical_win_red).to eq("Red")
    end
  end

  describe "#vertical_win_red" do
    it "calculates if four sequential red pieces are in a vertical row" do
      @game = ConnectFour.new(["A_Red", "C_Yellow",  "D_Red", "B_Yellow"  "C_Red", "B_Yellow", "D_Red", "A_Yellow", "A_Red", "G_Yellow", "D_Red", "B_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.vertical_win_red).not_to eq("Red")
    end
  end

  describe "#horizontal_win_yellow" do
    it "calculates if four sequential yellow pieces are in a horizontal row" do
      @game = ConnectFour.new(["A_Red", "A_Yellow", "B_Red", "B_Yellow", "C_Red", "C_Yellow", "G_Red", "D_Yellow", "F_Red", "D_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.horizontal_win_yellow).to eq("Yellow")
    end
  end

  describe "#horizontal_win_yellow" do
    it "calculates if four sequential yellow pieces are in a horizontal row" do
      @game = ConnectFour.new(["A_Red", "A_Yellow", "B_Red", "B_Yellow", "C_Red", "C_Yellow", "G_Red", "D_Yellow", "F_Red", "F_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.horizontal_win_yellow).not_to eq("Yellow")
    end
  end

  describe "#horizontal_win_red" do
    it "calculates if four sequential red pieces are in a horizontal row" do
      @game = ConnectFour.new(["A_Red", "A_Yellow", "B_Red", "B_Yellow", "C_Red", "C_Yellow", "D_Red", "F_Yellow", "F_Red", "E_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.horizontal_win_red).to eq("Red")
    end
  end

  describe "#horizontal_win_red" do
    it "calculates if four sequential red pieces are in a horizontal row" do
      @game = ConnectFour.new(["A_Red", "A_Yellow", "B_Red", "B_Yellow", "C_Red", "C_Yellow", "G_Red", "D_Yellow", "F_Red", "F_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.horizontal_win_red).not_to eq("Red")
    end
  end

  describe "#diagonal_win_yellow" do
    it "calculates if four sequential yellow pieces are in a diagonal row" do
      @game = ConnectFour.new(["A_Red", "B_Yellow", "C_Red", "C_Yellow", "D_Red", "D_Yellow", "E_Red", "D_Yellow", "E_Red", "E_Yellow", "G_Red", "E_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.diagonal_win_yellow).to eq("Yellow")
    end
  end

  describe "#diagonal_win_yellow_y_axis" do
    it "calculates if four sequential yellow pieces are in a diagonal row from y axis" do
      @game = ConnectFour.new(["A_Red", "B_Yellow", "C_Red", "C_Yellow", "A_Red", "D_Yellow", "E_Red", "D_Yellow", "C_Red", "F_Yellow", "G_Red", "E_Yellow", "F_Red", "F_Yellow", "G_Red", "G_Yellow", "A_Red", "A_Yellow"])
      @game.slot_pieces_into_grid
      expect(@game.diagonal_win_yellow_y_axis).to eq("Yellow")
    end
  end

  describe 

end

# map A-G to 0-6
# parse each string in input array and remove first two chars
# add colour to related array
# loop array and counter ++ if colour:
#   - sequential in sub-array (vertical row)
#   - sequential in sub-array[same index] (horizontal row)
#   - sequential in sub-array[index +1] (diagonal row)
#   - if colour changes, restart counter
#   - end game if colour counter == 4
#   - draw game if neither counter == 4