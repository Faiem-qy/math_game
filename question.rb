class MathQuestion
  attr_reader :question, :answer
  
  def initalize
    generate_question
  end

  def generate_question
    @num = rand(1..20)
    @num = rand(1..20)
    @answer = @num1 + @num2
    @question = "Whar does #{@num1} plus #{@num2} equal"
  end

  def check_answer(player_answer)
    player_answer == @answerend

  def to_s
    @question
  end
end

  


