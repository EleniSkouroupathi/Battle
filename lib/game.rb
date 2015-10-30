require_relative 'player'

class Game

	attr_reader :player1, :player2, :current_player

 	def initialize(name1, name2)
		@player1 = Player.new(name1)
		@player2 = Player.new(name2)
		@current_player = player1
	end

	def attack(player)
	  	player.receive_damage
			swap_player
  end

	def swap_player
		if current_player = player1
			@current_player = player2
		elsif current_player = player2
			@current_player = player1
		end
	end
end
