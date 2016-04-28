
feature 'Attack' do
	scenario 'player 1 attacks player 2 and gets confirmation' do
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content 'was attacked'
	end

	scenario 'button redirects to main page' do
		allow(Kernel).to receive(:rand) {10}
		sign_in_and_play
		switch_turns
		expect(page).to have_content 'Dave vs Mittens'
	end

	scenario 'displays the other players HP' do
		allow(Kernel).to receive(:rand) {10}
		sign_in_and_play
		switch_turns
		expect(page).not_to have_content "Dave's turn"
		expect(page).to have_content "Mittens's turn"
	end

	feature "attack" do
  scenario "and receive confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens was attacked'
  end

  scenario "and reduce Player 2 HP by 10" do
    allow(Kernel).to receive(:rand) {10}
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50HP'
  end
end


end