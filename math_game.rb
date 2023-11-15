require_relative 'player'
require_relative 'math_question'

class MathGame
  attr_reader :players, :current_player_index

  def initialize(players)
    @players = players
    @current_player_index = 0
  end

  # call the fx from math_question.rb
  def generate_question()
    # create a new instance of MathQuestion with random num
    MathQuestion.generate_question
  end

  def current_question
    # when @current_question is truthy -> stay unchanged
    # otherwise, assigns the result of generate_question to @current_question
    # returns an instance of MathQuestion
    @current_question ||= generate_question
  end

  def validate_answer(answer)
    # current_question method returns an instance of MathQuestion
    # check_answer is a public method of it
    current_question.check_answer(answer)
  end

  def update_scores
    if validate_answer(gets.chomp)
      puts "Yes! You're correct!"
    else 
      current_player.reduce_life
      puts "Nope, incorrect! #{current_player.name} loses a life"
    end
    display_scores
    switch_turn
  end

  def game_over?
    # checks if at least one player in the players array is dead. 
    players.any? {|player| player.lives <= 0}
  end

  def announce_winner
    winner = players.find { |player| player.lives > 0 }
    puts "#{winner.name} wins with #{winner.lives} lives remaining!"
    puts "Game over."
  end

  def start_game
    until game_over?
      current_question = generate_question
      puts "#{current_player.name}, #{current_question.get_question}"
      update_scores
    end
    announce_winner
  end


  private

  def current_player 
    @players[@current_player_index]
  end

  def switch_turn
    # either 0 or 1
    @current_player_index = (@current_player_index + 1) % @players.length
  end

  def display_scores
    @players.each { |player| puts "#{player.name}: #{player.lives} lives" }
  end

end
