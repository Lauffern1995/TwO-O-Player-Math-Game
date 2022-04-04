# QUESTIONS CLASS

class Questions

  attr_accessor :num1, :num2, :result, :random_question

  # init with random number from 1 to 50 and add them together
  def initialize()
    @num1 = rand(1...50)
    @num2 = rand(1...50)
    @result = @num1 + num2 
    @random_question = "What does #{num1} plus #{num2} equal?"
  end

end


# test = Questions.new 
# puts test.num1
# puts test.num2
# puts test.result
# puts test.random_question