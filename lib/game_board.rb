class GameBoard
  attr_accessor :board

  def initialize
    @board = Array.new(9, ' ')
  end

  def set_symbol(position, symbol)
    board[position] = symbol
  end

end



# board = ['O', 'O', 'O', ' ', 'X', ' ', ' ', ' ', 'X']
board = GameBoard.new
board.set_symbol(1, "X")
board.test_full
board.show_board
puts board.full?
