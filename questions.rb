class Questions

  def initialize()
    @int_one = rand(1...20)
    @int_two = rand(1...20)
  end
  
  def question(player)
    puts "#{player}: #{@int_one} + #{@int_two} = ❓"
  end
  
  def answer?(input)
    answer = @int_one + @int_two
    answer == input
  end
end
