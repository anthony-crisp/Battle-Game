require 'player'

describe Player do
  subject(:fred) { Player.new('Fred') }
  subject(:barney) { Player.new('Barney') }


  describe '#name' do
    it 'Returns a players name' do
      expect(fred.name).to eq 'Fred'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(barney.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { barney.take_damage }.to change { barney.hit_points }.by(-10)
    end
  end

end
