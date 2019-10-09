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

class Turn
  attr_accessor :frames

  def initialize
    @frames = [Frame.new]
  end

  def roll(pins)
  end

  def score
    frames.map(&:score).inject(:+)
  end
end

class Frame
  attr_accessor :goes

  def initialize(pins = nil)
    @goes = []
  end

  def score
    goes.inject(0, :+)
  end
end
