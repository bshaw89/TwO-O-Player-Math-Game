class Session
  
  def initialize
    puts "Enter name for Player1:"
    puts "> "
    player1_name = gets.chomp
    @p1 = Player.new(player1_name, 3)
    puts "Enter name for Player2:"
    puts "> "
    @player2_name = gets.chomp
    @p2 = Player.new(@player2_name, 3)
  end

  def set_turn
    while @p1.lives > 0 || @p2.lives > 0
      turn1 = Turn.new(@p1)
      get_score
      if check_score
        break
      end
      turn2 = Turn.new(@p2)
      get_score
      if check_score
        break
      end
    end
    MathGame.new
  end

  def get_score
    puts "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
  end

  def check_score
    if @p1.lives == 0
      puts "#{@p2.name.upcase} WINS!"
      return true
    elsif @p2.lives == 0
      puts "#{@p1.name.upcase} WINS!"
      return true
    end
  end

end