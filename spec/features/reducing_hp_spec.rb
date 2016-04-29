feature 'reduce hp' do
	scenario 'get a confirmation with lower HP' do
		sign_in_and_play_and_scratch
    expect(page).to have_content(/19|18|17/)
  end
end
