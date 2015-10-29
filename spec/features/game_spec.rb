require 'game'

describe Game do

	it 'Player 2 loses 20 HP' do
		game1 = Game.new("Eleni", "Mattia")
		game1.attack(game1.player2)
		expect(game1.player2.default_points).to eq 60
	end
end