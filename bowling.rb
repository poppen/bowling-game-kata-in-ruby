class Bowling
  def initialize
    @score = 0
    @throws = []
  end

  def hit(pins)
    @throws.push pins
  end

  def score
    index = 0
    while index < @throws.size
      if @throws[index] == 10
        @score += (@throws[index] + @throws[index+1] + @throws[index+2])
        index += 1
      elsif @throws[index] + @throws[index+1] == 10
        @score += (10 + @throws[index+2])
        index += 2
      else
        @score += (@throws[index] + @throws[index+1])
        index += 2
      end
    end
    @score
  end
end
