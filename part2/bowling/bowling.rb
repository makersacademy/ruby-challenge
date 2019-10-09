require_relative "turn"
require_relative "frame"

class Game
  attr_accessor :turn

  def initialize
    @turn = Turn.new
  end

  def roll(pins)
    turn.roll(pins)
  end

  def score
    turn.score
  end
end
