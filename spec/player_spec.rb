require 'player'

describe Player do
	let(:player) { described_class.new("Google") }

	it 'returns a passed argument' do
		expect(player.name).to eq 'Google'
	end
end