class Turn
  attr_accessor :frames

  def initialize
    @frames = [Frame.new]
  end

  def roll(pins)
    frames.last << pins
    frames[0...-1].select(&:extra_points?).each do |frame|
      frame.extra << pins
    end
    if frames.count != 10 && frames.last.done?
      frames << Frame.new
    end
  end

  def score
    original_total + extra_total
  end

  def original_total
    frames.map(&:original_score).inject(:+)
  end

  def extra_total
    frames.map(&:extra_score).inject(:+)
  end

  def done?
    frames.count == 10 && frames.last.done?
  end
end
