#players
#both players have 3 lives
#update the scores of each player every turn
#if player reaches 0/3 announce the winner


class Player
attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

end

sori = Player.new('Sori')
vaughn = Player.new('Vaughn')

puts sori.lives
puts sori.name