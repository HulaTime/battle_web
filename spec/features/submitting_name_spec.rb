feature "Player registration", :type => :feature do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_text("Player 1: Mr.Jones vs Player 2: Mrs.Jones FIGHT!")
  end
end
