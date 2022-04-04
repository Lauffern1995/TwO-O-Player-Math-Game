#  MAIN FILE TO RUN GAME 
require "./questions"
require "./player"

class Game 

  # init game and immed call start game. ** could change players to take in CLI input ** 
  def initialize 
    @player1 = Player.new("Noah")
    @player2 = Player.new("Not Noah")
    startGame
  end


  def startGame
    # check to see if score is 0 
    if !(@player1.score?) || !(@player2.score?)
      puts "----GAME OVER ----"
      puts "GoodBye!"
      return
    end

    puts "----NEW TURN ----"
    new_q = Questions.new
    puts "Player 1: #{new_q.random_question}"
    print "> "
    choice = gets.chomp
    # must convert choice to int. comes in from CLI as string. 
    if choice.to_i == new_q.result 
      puts "Player 1: YES! You are correct!"
      puts "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3"
    else 
      puts "Player 1: Seriously? No!"
      @player1.points -= 1
      puts  "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3" 
    end
      puts "----NEW TURN ----"
      new_q2 = Questions.new
      puts "Player 2: #{new_q2.random_question}"
      print "> "
      choice2 = gets.chomp
      # must convert choice to int. comes in from CLI as string. 
    if choice2.to_i == new_q2.result 
      puts "Player 2: YES! You are correct!"
      puts  "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3"
    else 
      puts "Player 2: Seriously? No!"
      @player2.points -= 1
      puts  "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3" 
   
    end 
  # start game back up with recursion until conditional is truthy
  startGame
  end
end



# Creates new game
Game.new
  