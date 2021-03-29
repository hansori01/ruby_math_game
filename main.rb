require "./players"
require "./game_host"
require "./questions"
require "./game_progress"

player1, player2 = ARGV

newGame = Game.new(player1, player2)

newGame.start_game
