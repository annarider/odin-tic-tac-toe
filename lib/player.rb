class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def choose
    position = nil
    loop do
      puts "#{name}, it's your turn with #{symbol}. Choose your position between 0 and 8."
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

  private
  
  def choose_again
    puts "#{name}, invalid move. Choose your position again."
  end
end
