class GameBoard
  WINNING_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
    [0, 4, 8], [2, 4, 6] # diagonals
  ]

  attr_accessor :board

  def initialize
    @board = Array.new(9, ' ')
  end

  def set_symbol(position, symbol)
    board[position] = symbol
  end

  def show_board
    puts  <<~TEXT 
      #{board[0]} | #{board[1]} | #{board[2]} 
      ----------
      #{board[3]} | #{board[4]} | #{board[5]}
      ----------
      #{board[6]} | #{board[7]} | #{board[8]}
      TEXT
  end

  def game_over?
    winner? || full?
  end

  def full?
    board.all? { |element| element == 'X' || element == 'O' }
  end   

  def winner?
    winning_symbol != nil
  end

  def valid_move?(position, symbol)
    position.between?(0, 8) && board[position] == ' '
  end

  private
  
  def winning_symbol
    WINNING_COMBINATIONS.each do |combo| 
      first = board[combo[0]]
      if first != ' ' && 
          first == board[combo[1]] && 
          first == board[combo[2]] 
        return first
      end 
    end
    nil
  end
end
