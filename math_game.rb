class MathGame
  
  def initialize
    puts "New session?"
    puts "> "
    answer = gets.chomp
    if answer.include?("y")
      puts "Ok!"
      new_session = Session.new
      new_session.set_turn
    else
      puts "Ok then. Bye!"
    end
  end
end