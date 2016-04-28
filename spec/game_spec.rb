
require 'game'

describe Game do
	subject(:game) { described_class.new(player_1, player_2) }
	let(:player_1) { double :player }
	let(:player_2) { double :player }
  subject(:finished_game) { described_class.new(dead_player, player_2) }
  let(:dead_player) { double :player, hit_points: 0}

	describe "#initialize" do
		it 'returns the name of Player 1' do
			expect(game.player_1).to eq player_1
		end

		it 'returns the name of Player 2' do
			expect(game.player_2).to eq player_2
		end
	end

	describe '#attack' do
    	it 'attacks the opponent' do
      		expect(game.player_2).to receive(:reduce)
      		game.attack(game.player_2)
    	end
  	end

  	describe'#switch player' do
  		it 'switches player' do
  			game.switch
  			expect(game.current_player).to eq player_2
  		end
  	end

    describe '#game_over?' do
      it 'returns true if a player has died' do
        expect(finished_game.game_over?).to eq true
      end
    end





end
