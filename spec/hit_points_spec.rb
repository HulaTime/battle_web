
feature 'Hitpoints' do 
	scenario 'view player 2 Hit points' do 
		sign_in_and_play
		expect(page).to have_content 'Mittens: 60HP'
	end



end