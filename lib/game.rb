# frozen_string_literal: true

# Game represents the tic-tac-toe game logic.
# It manages a play loop with turn taking.
#
# @example Creating a new game
#   game = Game.new
class Game
  require_relative 'game_board'
  require_relative 'player'
  attr_accessor :board, :player1, :player2, :current_player

  def initialize
    @board = GameBoard.new
    create_players
    @current_player = play_order
    puts "#{current_player.name} is going first and is assigned #{current_player.symbol}."
  end

  def play
    play_round
    while play_again?
      reset
      play_round
    end
  end

  private

  def create_players
    puts "What's the first player's name?"
    name1 = gets.chomp
    puts "What's the second player's name?"
    name2 = gets.chomp
    symbols = randomize_symbols
    @player1 = Player.new(name1, symbols[0])
    @player2 = Player.new(name2, symbols[1])
  end

  def play_order
    [player1, player2].sample
  end

  def randomize_symbols
    %w[X O].shuffle
  end

  def play_round
    loop do
      play_turn
      board.show_board
      break if board.game_over?

      @current_player = reverse_turn
    end
    announce_end
  end

  def play_turn
    position = current_player.choose
    until board.valid_move?(position)
      current_player.choose_again
      position = current_player.choose
    end
    board.set_symbol(position, current_player.symbol)
  end

  def reverse_turn
    current_player == player1 ? player2 : player1
  end

  def announce_end
    if board.winner?
      puts "Game over. The winner was #{current_player.name}."
    elsif board.full?
      puts 'Game over. No winner.'
    end
  end

  def play_again?
    puts 'Play again? Enter y for yes (y): '
    gets.chomp.downcase == 'y'
  end
  
  def reset
    @board = GameBoard.new
    @current_player = play_order
    puts "Let's play again. It's #{current_player.name}'s turn."
  end
end
