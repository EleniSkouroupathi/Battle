require 'game'

describe Game do

	it 'Player 2 loses 20 HP' do
		game1 = Game.new("Eleni", "Mattia")
		game1.attack(game1.player2)
		expect(game1.player2.hp).not_to eq 80
	end

	it 'starts with a current player' do
		game1 = Game.new("Eleni", "Mattia")
		expect(game1.current_player).to eq game1.player1
	end

	it 'knows who the current player is' do
		game1 = Game.new("Eleni", "Mattia")
		game1.attack(game1.player2)
		expect(game1.current_player).to eq game1.player2
	end
end
