require 'player'

describe Player do
  subject(:fred) { Player.new("Fred")}

    describe '#name' do
      it 'Returns a players name' do
      expect(fred.name).to eq "Fred"
    end
  end
end
