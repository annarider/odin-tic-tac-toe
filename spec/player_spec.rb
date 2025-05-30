# frozen_string_literal: true

require_relative '../lib/player'

# Tests for the Player class

describe Player do
  describe '#choose' do
    subject(:choose_position) { described_class.new(name, symbol) }
    let(:name) { 'A' }
    let(:symbol) { 'X' }
    let(:position) { 7 }

    context 'when given valid single positive integer between 0 and 8' do
      before do
        input = 0
        allow(choose_position).to receive(:valid_input).and_return(input)
      end
      it 'stops loop, does not display error message, and returns a position' do
        error_message = "#{name}, invalid move. Choose your position again."
        expect(choose_position).not_to receive(:puts).with(error_message)
        expect(choose_position.choose).to eq(0)
      end
    end

    context 'when given invalid letter, symbol, then valid input' do
      before do
        letter = 'p'
        punctuation = '%'
        allow(choose_position).to receive(:valid_input).and_return(letter, punctuation, position)
      end
      it 'displays error message twice, then ends loop after valid input' do
        error_message = "#{name}, invalid move. Choose your position again."
        confirm_message = "#{name}, #{symbol}, chose position: #{position + 1}."
        expect(choose_position).to receive(:puts).with(error_message).twice
        expect(choose_position).to receive(:puts).with(confirm_message).once
        expect(choose_position.choose).to eq(7)
      end
    end
  end
end
