class Player
  attr_accessor :lives
  attr_reader :player

  def initialize player
      @player = player
      @lives = 3
  end

  def lose_life
      @lives -= 1
  end
  
end