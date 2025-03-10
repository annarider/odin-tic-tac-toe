# frozen_string_literal: true

# GameBoard represents the tic-tac-toe board.
# It sets the positions with symbols and checks
# if moves are valid.
#
# @example Creating a new game board
#   board = GameBoard.new
class GameBoard
  EMPTY_CELL = ' '
  BOARD_SIZE = 9
  WINNING_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
    [0, 4, 8], [2, 4, 6] # diagonals
  ].freeze

  attr_accessor :board

  def initialize
    @board = Array.new(BOARD_SIZE, EMPTY_CELL)
  end

  def set_symbol(position, symbol)
    board[position] = symbol
  end

  def show_board
    puts <<~TEXT
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
    board.all? { |element| %w[X O].include?(element) }
  end

  def winner?
    winning_symbol != nil
  end

  def valid_move?(position)
    position.between?(0, 8) && board[position] == ' '
  end

  private

  def winning_symbol
    WINNING_COMBINATIONS.each do |a, b, c|
      if board[a] != EMPTY_CELL &&
         board[a] == board[b] &&
         board[a] == board[c]
        return board[a]
      end
    end
    nil
  end
end
