class Question
  attr_reader :question, :answer

  def initialize player
      @num1 = rand(20) + 1
      @num2 = rand(20) + 1
      @question = "Player #{player}: What is #{@num1} plus #{@num2}?"
      @answer = @num1 + @num2
  end
end