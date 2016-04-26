class Player

	attr_reader :name, :hp

	def initialize(name, hp=100)
		@hp = hp
		@name = name
	end

	def receive_attack
		@hp -= 20
	end
end