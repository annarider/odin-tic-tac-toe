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
      ----------
      #{board[3]} | #{board[4]} | #{board[5]}
      ----------
      #{board[6]} | #{board[7]} | #{board[8]}
      TEXT
  end

  def game_over?
    if winner? || full?
      true
    end
    false
  end

  def empty?
    board.all? { |element| element == ' ' }
  end 

  def full?
    board.all? { |element| element == 'X' || element == 'O' }
  end   

  def test_full
    board.fill('O')
  end

  def winner?
    winning_combinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
      [0, 4, 8], [2, 4, 6] # diagonals
    ]
    winning_combinations.each do |combo| 
      if combo.all? { |element| 
          board[element] == board[combo[0]] && 
          board[element] != ' ' }
        return true
      end 
    end
    false 
  end

  def valid_move?(position, symbol)
    if symbol != 'X' && symbol != 'O'
      false
    elsif board[position] == ' '
      true
    else 
      false
    end
  end
end



# board = ['O', 'O', 'O', ' ', 'X', ' ', ' ', ' ', 'X']
board = GameBoard.new
puts "empty: #{board.empty?}"
# board.test_full
board.set_symbol(1, 'X')
puts "valid: #{board.valid_move?(1,'O')}"
puts "valid: #{board.valid_move?(2,'O')}"
board.show_board
puts "full: #{board.full?}"
puts "winner: #{board.winner?}"
puts "empty: #{board.empty?}"
puts "gameover: #{board.game_over?}"
