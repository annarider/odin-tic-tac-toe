class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def choose
    position = nil
    loop do
      puts "#{name}, it's your turn with #{symbol}. Choose your position between 1 and 9."
      position = Integer(gets.chomp) - 1 rescue false
      if (0..8).include?(position)
        break
      else 
        choose_again
      end
    end
    puts "#{name} chose position: #{position + 1}."
    position
  end

  def choose_again
    puts "#{name}, invalid move. Choose your position again."
  end
end
