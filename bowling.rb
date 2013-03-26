class Bowling
  def initialize
    @score = 0
    @throws = []
  end

  def hit(pins)
    @throws.push pins
  end

  def score
    previous_spare = false
    @throws.each_slice(2) do |frame|
      if previous_spare
        @score += frame[0]
      end
      previous_spare = (frame[0] + frame[1] == 10 ? true : false)

      @score += (frame[0] + frame[1])
    end

    @score
  end
end
