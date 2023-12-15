class Game
  def initialize(player1, player2)
    @player1 = player1 #Initialize with two player objects
    @player2 = player2
    @current_player = @player1 #start as player 1
  end

  def start_game
    while !game_over? #continue until game is over
      question = generate_question
      @current_player.answer_question(question)
      display_scores
      switch_player
      puts "----- NEW TURN -----"
    end
    end_game #end game and display the winner
  end

  def end_game
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def generate_question
    MathQuestion.new
  end

  def display_scores
    puts "#{@player1} vs #{@player2}"
  end

  def game_over?
    !@player1.is_alive || !@player2.is_alive
  end

  def winner
    if @player1.is_alive
      @player1
    else
      @player2
    end
  end
end
