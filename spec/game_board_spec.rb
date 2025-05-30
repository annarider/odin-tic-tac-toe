# frozen_string_literal: true

require_relative '../lib/game_board'

# Tests for the GameBoard class

describe GameBoard do
  subject(:game_board) { described_class.new }

  describe '#full?' do
    context 'when every position on the board has an X symbol' do
      let(:full_board) { Array.new(9, 'X') }
      before do
        allow(game_board).to receive(:board).and_return(full_board)
      end

      it 'returns true' do
        expect(game_board.full?).to be true
      end
    end
    context 'when every position on the board has an X or O symbol' do
      let(:full_board) { Array.new(9, %w[X O].sample) }
      before do
        allow(game_board).to receive(:board).and_return(full_board)
      end

      it 'returns true' do
        expect(game_board.full?).to be true
      end
    end
    context 'when some positions on the board are empty' do
      let(:part_full_board) { Array.new(9, %w[X O ' '].sample) }
      before do
        allow(game_board).to receive(:board).and_return(part_full_board)
      end

      it 'returns false' do
        expect(game_board.full?).to be false
      end
    end

  end
end
