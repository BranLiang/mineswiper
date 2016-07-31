require "mineswiper/version"
require "mineswiper/board"
require "mineswiper/cell"
require 'colorize'

=begin
Game start
Board.initialize
Board.render
Player.click
Cell.state change
autofill if surrounding cells has no mines around
game_over if the cell has a mine
show the surrounding mines count number
Player can put flag on the Cell

class: Board
  initialize: 10*10[Array], filled with Cells
            all cells are not mine
            random_generate_mines: 9 mines
            calculate_nearby_mines for each cell
  actions:  Attr_reder: Array.


class: Cell
  initialize: state: nil, content
  actions:  change-state
            states: unclear, cleared, flaged
            mine_condition: true, false
            nearby_mines: 0, 1..9

class: Player
  initialize:
  action: clear_cell(coodinate)
          place_flag(coodinate)
          remove_flag(coodinate)
          command(input) => need to be validated

class: Game
  initialize: Player.new, Board.new
  action: play => Board.render
               => Player.clear_cell/place_flag
               => loop until game_over
               =>   Board.render
               =>   Player.command
               =>   break if a cell with mine is cleared
               => end loop

=end

module Mineswiper
  # Your code goes here...
end
