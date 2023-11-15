require_relative 'player'
require_relative 'math_question'
require_relative 'math_game'

# Create players
lori = Player.new('Lori')
sofie = Player.new('Sofie')

# Create a MathGame instance with players
game = MathGame.new([lori, sofie])

# Start the game
game.start_game