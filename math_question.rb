class MathQuestion
  attr_reader :num1, :num2, :answer

  def initialize
    generate_question
  end

  def generate_question
    # pick a random integer from 1 to 20(inclusive)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def check_ans(player_ans)
    player_ans.to_i == @answer
  end

  def get_question
    "What is #{@num1} + #{@num2}"
  end

end
