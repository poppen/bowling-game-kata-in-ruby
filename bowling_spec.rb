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

    it 'retunrs 24 for one strike, and 3 pins and 4 ping at next frame' do
      @game.hit(10)
      @game.hit(3)
      @game.hit(4)
      16.times { @game.hit(0) }
      @game.score.should eq(24)
    end

    it 'returns 300 for all strike' do
      12.times { @game.hit(10) }
      @game.score.should eq(300)
    end
  end
end
