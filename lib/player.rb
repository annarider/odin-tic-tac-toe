class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def choose
    position = nil
    loop do
      puts "#{name}, it's your turn. Choose your position between 0 and 8."
      position = Integer(gets.chomp) rescue false
      if (0..8).include?(position)
        break
      else 
        choose_again # TODO declare invalid move
      end
    end
    puts "#{name} chose position: #{position}."
    position
  end

  def choose_again
    puts "#{name}, invalid move. Choose your position again."
  end
end

# player1 = Player.new('A', 'X')
# player2 = Player.new('B', 'O')
# p player1, player2
# player1.choose
# player2.choose
