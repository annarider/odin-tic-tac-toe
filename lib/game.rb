require_relative 'game_board'
require_relative 'player'

class Game
  attr_accessor :board, :player1, :player2, :current_player 

  def initialize
    @board = GameBoard.new
    create_players
    @current_player = play_order
    puts "#{current_player.name} is going first and is assigned #{current_player.symbol}."
  end
  
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
    ['X', 'O'].shuffle
  end


end
