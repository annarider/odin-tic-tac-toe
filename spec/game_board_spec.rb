# frozen_string_literal: true

require_relative '../lib/game_board'

# Tests for the GameBoard class

describe GameBoard do
  subject(:game_board) { described_class.new }
  
    describe '#game_over?' do
      context 'when the board has a winning combination on top row' do
        let(:win_board) { ['X', 'X', 'X', 
                           ' ', ' ', ' ', 
                           ' ', ' ', ' '] }
        before do
          allow(game_board).to receive(:board).and_return(win_board)
        end

        it 'returns true' do
          expect(game_board.game_over?).to be true
        end
      end
      context 'when the board has a winning combination on middle column' do
        let(:win_board) { ['X', 'O', 'X', 
                           ' ', 'O', 'X', 
                           'X', 'O', ' '] }
        before do
          allow(game_board).to receive(:board).and_return(win_board)
        end

        it 'returns true' do
          expect(game_board.game_over?).to be true
        end
      end
      context 'when the board has a winning combination on the diagonal' do
        let(:win_board) { ['X', 'O', 'X', 
                           ' ', 'X', 'X', 
                           'X', 'O', 'X'] }
        before do
          allow(game_board).to receive(:board).and_return(win_board)
        end

        it 'returns true' do
          expect(game_board.game_over?).to be true
        end
      end
      context 'when the board is empty' do
        let(:empty_board) { Array.new(9, ' ') }
        before do
          allow(game_board).to receive(:board).and_return(empty_board)
        end

        it 'returns false' do
          expect(game_board.game_over?).to be false
        end
      end
      context 'when the board is full with no winning combinations' do
        let(:game_over_board) { ['X', 'O', 'X', 
                                 'O', 'X', 'O', 
                                 'X', 'O', 'O'] }
        before do
          allow(game_board).to receive(:board).and_return(game_over_board)
        end

        it 'returns true' do
          expect(game_board.game_over?).to be true
        end
      end
    end

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
      let(:partially_full_board) { ['X', 'O', 'X', 
                                    ' ', 'X', 'X', 
                                    'X', 'O', 'X'] }
      before do
        allow(game_board).to receive(:board).and_return(partially_full_board)
      end

      it 'returns false' do
        expect(game_board.full?).to be false
      end
    end
  end
end
