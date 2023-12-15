require_relative 'player'
require_relative 'question'
require_relative 'game'


#Create two players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

#Create a game instance 
game = Game.new(player1, player2)

#Start the game
game.start_game