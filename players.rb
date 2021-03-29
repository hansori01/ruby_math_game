class Player
attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
    end

  def question_round 
    current_round = Questions.new
    current_round.question(name)

    print "\nanswer: "
    @answer = $stdin.gets.chomp.to_i

    if current_round.answer?(@answer)
      puts "\nCorrect ✅ [ENTER]"
      STDIN.getc
    else 
      puts "\nWrong answer 💀 [ENTER]"
      STDIN.getc
      @lives -= 1
    end

  end
end
