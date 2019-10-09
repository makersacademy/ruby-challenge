class Frame
  attr_accessor :goes, :extra

  def initialize(pins = nil)
    @goes = []
    @extra = []

    if pins
      goes << pins
    end
  end

  def original_score
    goes.inject(0, :+)
  end

  def extra_score
    extra.inject(0, :+)
  end

  def spare?
    goes.length >= 2 && goes[0] + goes[1] == 10
  end

  def strike?
    goes.length >= 1 && goes[0] == 10
  end

  def <<(pins)
    goes << pins
  end

  def done?
    goes.length == 2 || strike?
  end

  def extra_points?
    spare? && @extra.length < 1 || strike? && @extra.count < 2
  end
end
