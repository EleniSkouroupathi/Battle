require_relative 'player'

class Game

	attr_reader :player1, :player2

 	def initialize(name1, name2)
		@player1 = Player.new(name1)
		@player2 = Player.new(name2)
	end

		def attack(player)
	  	player.receive_damage
  	end

end
