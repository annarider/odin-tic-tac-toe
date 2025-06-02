# frozen_string_literal: true

require_relative '../lib/game'

# Tests for the Game class

describe Game do
  describe '#initialize' do
    context 'when setting up a game' do
      subject(:create_game) { described_class.new }
      before do
        allow_any_instance_of(Kernel).to receive(:gets).and_return("Anna\n", "Alex\n")
        allow_any_instance_of(Game).to receive(:puts)
      end

      it "creates a new game object" do
        expect(create_game).to respond_to(:play)
      end
    end
  end
end
