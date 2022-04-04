# PLAYER CLASS

class Player 

  attr_accessor :name, :points
  # init player with name and default score
  def initialize(name)
    @name = name
    @points = 3
  end 

# boolean val to check status of score
  def score?
    @points > 0 
  end

end

# noah = Player.new('Noah')
# puts noah.name
# puts noah.points
# puts noah.score?