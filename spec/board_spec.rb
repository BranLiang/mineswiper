require 'spec_helper'

describe Mineswiper::Board do
  context '#initialize' do
    it 'set up a 10*10 array' do
      # cell = double("Cell")
      new_board = Mineswiper::Board.new
      expect(new_board.board.length).to eq(10)
      expect do
        new_board.board.all? do |row|
          row.length == 10
        end
      end
    end
  end

  context '#generate_mines' do
    it 'generate 9 mines in the board' do
      new_board = Mineswiper::Board.new
      counter = 0
      result = new_board.board.each do |row|
        row.each do |cell|
          counter += 1 if cell.mine_state == true
        end
      end
      expect(counter).to eq(9)
    end

    it 'mines are randomly generated' do
      board1 = Mineswiper::Board.new
      board2 = Mineswiper::Board.new
      expect(board1.board).to_not eq(board2.board)
    end


  end
end
