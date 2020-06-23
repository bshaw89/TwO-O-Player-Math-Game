class Turn

  def initialize(player)
    @player = player
    puts "#{player.name}'s turn:"
    new_question = Question.new(player)
  end
end
