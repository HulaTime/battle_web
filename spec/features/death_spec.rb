feature 'Death' do

  scenario 'displays death page when someones health reaches 0' do
    sign_in_and_play
    attack_to_death
    expect(page).to have_content "You Lose!"
  end


end