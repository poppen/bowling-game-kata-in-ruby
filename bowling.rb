class Bowling
  def initialize
    @score = 0
  end

  def hit(pins)
    @score += pins
  end

  def score
    @score
  end
end
