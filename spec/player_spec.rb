require 'player'

describe Player do
	let(:player) { described_class.new("Google") }

	it 'returns a passed argument' do
		expect(player.name).to eq 'Google'
	end

	it 'reduces hp by 20 after an attack' do
		player.receive_attack
		expect(player.hp).to eq 80
	end
end