require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new("player1", "player2") }

    describe '#player_one' do
       it 'retrieves the first player' do
         expect(game.player_one).to eq "player1"
       end
    end
    describe '#player_two' do
     it 'retrieves the second player' do
       expect(game.player_two).to eq "player2"
     end
    end
end
