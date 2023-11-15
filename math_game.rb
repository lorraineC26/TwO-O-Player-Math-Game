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

  


end
