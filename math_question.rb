class MathQuestion

  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def get_question
    "What is #{num1} + #{num2}?"
  end

  def correct_answer?(answer)
    answer == num1 + num2
  end
  
end
