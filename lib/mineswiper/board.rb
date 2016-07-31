module Mineswiper

  class Board
    attr_reader :board
    def initialize
      @flags = 9
      @board = Array.new(10){ Array.new(10) }
      10.times do |row|
        10.times do |col|
          @board[row][col] = Mineswiper::Cell.new
        end
      end
      generate_mines
    end

    def generate_mines
      counter = 0
      rand_pos = []
      until counter == 9 do
        rand_pairs = [rand(0..9), rand(0..9)]
        unless rand_pos == rand_pairs
          rand_pos = rand_pairs
          @board[rand_pos[0]][rand_pos[1]].mine_state = true
          counter += 1
        end
      end
    end

    def render
      @board.each do |row|
        print '         '
        row.each do |cell|
          print '[ ]'.colorize(:background => :white) if cell.wipe_state == 'uncleared'
          print " "
        end
        puts
        puts
      end
    end
  end

end
