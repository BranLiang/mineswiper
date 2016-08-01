require "mineswiper/version"
require "mineswiper/board"
require "mineswiper/tile"
require 'mineswiper/player'
require 'mineswiper/display'
require 'colorize'

module Mineswiper
  class Game

    attr_accessor :board, :name, :player

    def initialize(name: "Player1", board: Board.new)
      @name = name
      @board = board
      @board.prepared_board
      @player = Player.new(@board)
    end

    def play
      until game_over?
        board.parse_input(player.move)
      end
    end



  end
end
