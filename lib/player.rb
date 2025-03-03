class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def choose
    position = nil
    until position.between?(0, 8)
      puts "It's your turn. Choose your position between 0 and 8."
      position = gets.chomp.to_i
    end
    position
  end
end
