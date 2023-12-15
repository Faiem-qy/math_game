class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name #initialize the player with a name
    @lives = 3   # start the player with 3 lives
  end

  def answer_question(question)
    puts "#{@name}: #{question}" #display player name and math question
    player_answer = gets.chomp.to_i

    if question.check_answer(player_answer)
      puts "#{@name}: YES! You are correct."
    else 
      puts "#{@name}: Seriously? No!"
      lose_life
    end
  end

  def lose_life #Decrements the player's lives when the answer to the question is incorrect
    @lives -= 1
  end

  def is_alive #Checks if the player has remaining lives.
    @lives > 0
  end

  def to_s #Returns a string representation of the player for output
    "#{@name}: #{@lives}/3"
  end
end