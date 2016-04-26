feature 'Attack Capability' do

  scenario 'Recieve notification of Player 1 attacking Player 2' do
    sign_in_and_play
    click_button('Attack Mrs.Jones')
    expect(page).to have_text("Mr.Jones has successfully thrown jelly beans at Mrs.Jones")
  end
end