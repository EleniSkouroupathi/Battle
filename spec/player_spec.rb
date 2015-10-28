require 'player'

describe Player do
  subject(:player1) { Player.new('Rajeev') }

  describe "#name" do
    it "returns name" do
      expect(player1.name).to eq('Rajeev')
    end
  end
end
