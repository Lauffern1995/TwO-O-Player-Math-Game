# PLAYER CLASS

class Player 

  # init player with name and default score
  def initialize(name)
    @name = name
    @score = 3
  end 

# boolean val to check status of score
  def score?
    @score > 0 
  end

end