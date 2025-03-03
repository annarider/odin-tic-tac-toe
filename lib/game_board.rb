class GameBoard
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
      ---------------------------
      #{board[3]} | #{board[4]} | #{board[5]}
      ---------------------------
      #{board[6]} | #{board[7]} | #{board[8]}
      TEXT
  end

end



# board = ['O', 'O', 'O', ' ', 'X', ' ', ' ', ' ', 'X']
board = GameBoard.new
board.set_symbol(1, "X")
board.test_full
board.show_board
puts board.full?
