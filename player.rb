class Player
  attr_reader :name, :lives
  
  def initialize(name, lives)
    @name = name
    puts "Good luck, #{name}!"
    @lives = lives
  end

  def lose_life
    @lives -= 1
  end
end
