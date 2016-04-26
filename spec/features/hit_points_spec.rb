feature "Player hit points" do
  scenario "Player 1 has hit points" do
    sign_in_and_play
    expect(page).to have_text("Mr.Jones HP : 100")
  end

  scenario "Player 2 loses 20 hit points" do
  	sign_in_and_play
  	click_button("Attack Mrs.Jones")
  	click_button("Back to Main Screen")
  	expect(page).to have_content("Mrs.Jones HP : 80")
  end
end