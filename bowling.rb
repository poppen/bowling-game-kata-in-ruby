class Bowling
  def initialize
    @throws = []
  end

  def hit(pins)
    @throws.push pins
  end

  def score
    score = 0
    index = 0
    while index < @throws.size
      if strike?(index)
        score += strike_score(index)
        index += 1
      elsif spare?(index)
        score += spare_score(index)
        index += 2
      else
        score += (@throws[index] + @throws[index+1])
        index += 2
      end
    end
    score
  end

  private
  def strike?(index)
    @throws[index] == 10
  end

  def spare?(index)
    @throws[index] + @throws[index+1] == 10
  end

  def strike_score(index)
    @throws[index] + @throws[index+1] + @throws[index+2]
  end

  def spare_score(index)
    10 + @throws[index+2]
  end
end
