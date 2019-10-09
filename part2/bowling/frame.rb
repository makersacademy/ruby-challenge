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
    goes[0] + goes[1] == 10
  end

  def <<(pins)
    goes << pins
  end

  def done?
    goes.length == 2
  end

  def extra_points?
    spare? && @extra.length < 1
  end
end
