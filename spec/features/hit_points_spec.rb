feature "Player hit points" do
  scenario "Player 1 has hit points" do
    sign_in_and_play
    expect(page).to have_text("Mr.Jones HP : 100")
  end
end