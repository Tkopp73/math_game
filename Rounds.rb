class Rounds
  def initialize(player)
    @current = player
    @num1 = rand(10)
    @num2 = rand(10)

  end

  def create_question
    "What is #{@num1} plus #{@num2}?"
  end

  def question_answer
    @num1 + @num2
  end

  attr_accessor :current
end