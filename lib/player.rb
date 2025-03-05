# frozen_string_literal: true

# Player creates the tic-tac-toe players.
#
# @example Creating a new player
#   player1 = Player.new
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def choose
    position = nil
    loop do
      position = valid_input
      break if (0..8).include?(position)

      choose_again
    end
    puts "#{name}, #{symbol}, chose position: #{position + 1}."
    position
  end

  def choose_again
    puts "#{name}, invalid move. Choose your position again."
  end

  private

  def valid_input
    puts "#{name}, it's your turn with #{symbol}. Choose your position between 1 and 9."
    begin
      Integer(gets.chomp) - 1
    rescue ArgumentError, TypeError
      # Only catch errors related to type conversion
      false
    end
  end
end
