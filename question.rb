class MathQuestion
  attr_reader :question, :answer
  
  def initialize
    generate_question # generate random question
  end

  def generate_question
    @num1 = rand(1..20) #random numbers generated
    @num2 = rand(1..20)
    @answer = @num1 + @num2 #sum of the numbers to get the answer
    @question = "What does #{@num1} plus #{@num2} equal" #generate a string for the generated numbers
  end

  def check_answer(player_answer)
    player_answer == @answer #check if the answer matches the player's input
  end

  def to_s
    @question #return math question as a string when the obj is converted to a string
  end
end

  


