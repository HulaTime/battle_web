feature "Player registration", :type => :feature do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_text("Player 1: Mr.Jones vs Player 2: Mrs.Jones FIGHT!")
  end

  scenario "Player 1 has hit points" do
    sign_in_and_play
  	expect(page).to have_text("Mr.Jones HP : 100")
  end
end
