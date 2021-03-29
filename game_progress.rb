class Game_progress

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
  end
  
  def current_score
    puts "#{@player1.name}: #{'❤️ ' * @player1.lives}\n#{@player2.name}: #{'❤️ ' * @player1.lives}\n"
    puts ">>>>>>>>>> Next Round [ENTER]"
    STDIN.getc
  end

  def check_lost
    if @player1.lives == 0 
      winner(@player2)
    elseif @player2.lives == 0
      winner(@player1)
    end
  end

  def winner(champion)
    puts "👑 👑 👑 #{champion.name} wins the game with #{"❤️ " * champion.lives}/3 remaining. [ENTER]"
    STDIN.getc
    puts "Goodbye 👋🏼 [ENTER]"
    STDIN.getc
    abort
  end

end


