require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player(1)' do
    it 'returns the first player' do
      expect(game.player(1)).to eq player_1
    end
  end
  describe '#player(2)' do
    it 'returns the second player' do
      expect(game.player(2)).to eq player_2
    end
  end
  
  describe '#attack' do
    it 'lowers player hit points' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
