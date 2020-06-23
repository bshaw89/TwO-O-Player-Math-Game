class Question

  def initialize(player)
    @player = player
    ask_question
  end

  def ask_question
    num1 = rand(20)
    num2 = rand(20)
    answer = num1 + num2
    puts answer
    puts "What's #{num1} + #{num2}?"
    puts "> "
    player_answer = gets.chomp.to_i
    if player_answer == answer
      puts "Nice!"
    else
      puts "WRONG!"
      @player.lose_life
      @get_score
    end
  end
end