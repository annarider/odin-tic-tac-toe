# frozen_string_literal: true

require_relative '../lib/game_board'

# Tests for the GameBoard class

describe GameBoard do
  subject(:game_board) { described_class.new }

  describe '#full?' do
    let(:full_board) { Array.new(9, 'X') }
    context 'when every position on the board has a symbol' do
      before do
        allow(game_board).to receive(:board).and_return(full_board)
      end
      it 'returns true' do
        expect(game_board.full?).to be true
      end
    end
  end
end
