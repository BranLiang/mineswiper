module Mineswiper
  class Cell
    attr_accessor :mine_state,
                  :wipe_state
    def initialize
      @mine_state = false
      @wipe_state = 'uncleared'
    end
  end
end
