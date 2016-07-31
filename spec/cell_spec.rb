require 'spec_helper'

describe Mineswiper::Cell do

  let(:cell){ Mineswiper::Cell.new }

  describe '#initialize' do
    it 'is not a mine' do
      expect(cell.mine_state).to be false
    end
    it 'is uncleared' do
      expect(cell.wipe_state).to eq('uncleared')
    end
  end
end
