require_relative './bowling'

describe Bowling do
  describe '#scrore' do
    before do
      @game = Bowling.new
    end

    it 'returns 0 for all gutter game' do
      20.times { @game.hit(0) }
      @game.score.should eq(0)
    end

    it 'retunrs 20 for all one game' do
      20.times { @game.hit(1) }
      @game.score.should eq(20)
    end

    it 'returns 16 for one spare and next 3 pins' do
      @game.hit(5)
      @game.hit(5)
      @game.hit(3)
      17.times { @game.hit(0) }
      @game.score.should eq(16)
    end
  end
end
