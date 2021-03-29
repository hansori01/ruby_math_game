class Game
  
    def initialize(p1, p2)
      @player1 = Player.new(p1)
      @player2 = Player.new(p2)
      @round_num = 0
      @stat = Game_progress.new(@player1, @player2)
    end

    def start_game
      puts "Starting a new game with #{@player1.name} and #{@player2.name}... [ENTER]"
      STDIN.getc
      puts "Ready to Start? [ENTER]"
      STDIN.getc
      round 
    end 
    
    def round
      @round_num += 1
      puts "Round #{@round_num} [ENTER]"
      STDIN.getc
      @player1.question_round
      @stat.check_lost
      @player2.question_round
      @stat.check_lost 
      @stat.current_score
      round #initiates next round if lives != 0
    end
    
end