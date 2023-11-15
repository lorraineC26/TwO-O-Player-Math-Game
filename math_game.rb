require_relative 'player'
require_relative 'math_question'

class MathGame
  attr_reader :players, :current_player_index

  def initialize(players)
    @players = players
    @player_1 = players[0]
    @player_2 = players[1]
    @current_player_index = 0
  end

  def start_game
    while @player_1.lives >0 && @player_2.lives > 0
      # posting new questions and get user inputs
      question = MathQuestion.new
      puts "#{current_player.name}: #{question.get_question}"
      answer = gets.chomp.to_i

      # validate answers and calc scores
      if question.correct_answer?(answer)
        puts "Yes! You're correct!"
        puts "Score: #{@player_1.name}: #{@player_1.lives}/3, #{@player_2.name}: #{@player_2.lives}/3,"
      else
        current_player.reduce_life
        puts "Nope, incorrect! #{current_player.name} loses a life"
        puts "Score: #{@player_1.name}: #{@player_1.lives}/3, #{@player_2.name}: #{@player_2.lives}/3,"
      end

      # switch user after each turn
      switch_turn

      #winner is determined at this point
      if @player_1.lives == 0 || @player_2.lives == 0
        announce_winner
      end
    end
  end

  # annoce game is over and the winner
  def announce_winner
    puts "Game Over!"

    if @player_1.lives.zero?
      puts "#{@player_2.name} wins with a score of #{@player_2.lives}/3"
    else
      puts "#{@player_1.name} wins with a score of #{@player_1.lives}/3"
    end
  end


  private

  def current_player 
    @players[@current_player_index]
  end

  def switch_turn
    # either 0 or 1
    @current_player_index = (@current_player_index + 1) % @players.length
  end

end
