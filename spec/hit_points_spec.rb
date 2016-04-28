
feature 'Hitpoints' do
	

  	scenario 'view player 1 Hit points' do
  		allow(Kernel).to receive(:rand) {10}
   		sign_in_and_play
    	expect(page).to have_content 'Dave: 60HP'
  	end

  scenario 'view player 2 Hit points' do
  		allow(Kernel).to receive(:rand) {10}
		sign_in_and_play
		expect(page).to have_content 'Mittens: 60HP'
	end

  scenario 'current player hp reduced when attacked' do
  		allow(Kernel).to receive(:rand) {10}
    	sign_in_and_play
    	switch_turns
    	expect(page).not_to have_content 'Mittens: 60HP'
    	expect(page).to have_content 'Mittens: 50HP'
  end

end