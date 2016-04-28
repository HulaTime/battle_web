class Game

 	attr_reader :current_player, :players, :not_current_player

	def initialize(player_1, player_2)
		@players = [player_1, player_2]
		@current_player = player_1
		@not_current_player = player_2
	end

	def player_1
		@players.first
	end

	def player_2
		@players.last
	end

	def attack(player)
    	player.reduce
 	end

 	def switch
 		@not_current_player = @current_player
 		@current_player = (@players.select{|p| p if p != @current_player}).first
 	end

end
