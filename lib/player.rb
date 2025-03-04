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
      break if (0..8).include?(position) 
    end
    puts "position: #{position}"
  end
end

# player1 = Player.new('A', 'X')
# player2 = Player.new('B', 'O')
# p player1, player2
# player1.choose
# player2.choose
