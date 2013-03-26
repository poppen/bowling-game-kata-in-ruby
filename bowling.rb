class Bowling
  def initialize
    @score = 0
    @throws = []
  end

  def hit(pins)
    @throws.push pins
    if pins == 10
      @throws.push 0
    end
  end

  def score
    previous_strike = false
    previous_spare = false
    @throws.each_slice(2) do |frame|
      if previous_strike
        @score += (frame[0] + frame[1])
      elsif previous_spare
        @score += frame[0]
      end
      previous_strike = (frame[0] == 10 ? true : false)
      previous_spare = (frame[0] + frame[1] == 10 ? true : false)

      @score += (frame[0] + frame[1])
    end

    @score
  end
end
