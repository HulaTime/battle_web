feature '2 Player/1 Player' do
  scenario 'user can select single player mode' do
    sign_in_and_play_single_player
    expect(page).to have_content 'Slasher vs. RoboMittens'
  end
end