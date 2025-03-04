require_relative 'lib/game'

game = Game.new
puts game.play_order
puts game.player1.name, game.player1.symbol
puts game.player2.name, game.player2.symbol
puts game.current_player.name, game.current_player.symbol
