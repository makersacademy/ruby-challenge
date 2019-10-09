class Game
  def initialize
    @rolls = []
    @score = 0
  end

  def roll(pins)
    @rolls.push(pins)
  end

  def score
    @score = @rolls.reduce(:+) 
    @score
  end
end
