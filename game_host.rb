#game
# asks the question turn by turn        that takes in an input
# updates the score by grabbing it from player class.

class Game
  attr_accessor :name, :lives
  
    def initialize(name)
      @name = name
      @lives = 3
    end
  
  end