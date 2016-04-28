
feature 'Attack' do 
	scenario 'player 1 attacks player 2 and gets confirmation' do 
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content 'was attacked'
	end

	scenario 'button redirects to main page' do 
		sign_in_and_play
		switch_turns
		expect(page).to have_content 'Dave vs Mittens'
	end

	scenario 'displays the other players HP' do 
		sign_in_and_play
		switch_turns
		expect(page).not_to have_content 'Mittens:'
		expect(page).to have_content 'Dave:'
	end

	
end