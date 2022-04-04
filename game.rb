#  MAIN FILE TO RUN GAME 
require "./questions"
require "./player"

class Game 

  def initialize 
    @player1 = Player.new("Noah")
    @player2 = Player.new("Not Noah")
    startGame
  end

  def startGame
    new_q = Questions.new
    puts "Player 1: #{new_q.random_question}"
    print "> "
    choice = $stdin.gets.chomp
    # must convert choice to int. comes in from CLI as string. 
    if choice.to_i == new_q.result 
      puts "Player 1: YES! You are correct!"
    else 
      puts "Player 1: Seriously? No!"
    end
  end

end

  Game.new
  