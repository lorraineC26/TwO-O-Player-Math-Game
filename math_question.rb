class MathQuestion
  attr_reader :num1, :num2, :answer

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @answer = @num1 + @num2
  end

  def self.generate_question
    # generate a new MathQuestion obj with random integer picked from 1 to 20 inclusively
    new(rand(1..20), rand(1..20))
  end

  def check_answer(player_ans)
    player_ans.to_i == @answer
  end

  def get_question
    "What is #{@num1} + #{@num2}"
  end

end
