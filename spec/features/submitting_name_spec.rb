feature "Player registration", :type => :feature do
  scenario "User enters name" do
    visit "/"
    fill_in "Player 1 name:", :with => "Mr.Jones"
    fill_in "Player 2 name:", :with => "Mrs.Jones"
    click_button "Submit"

    expect(page).to have_text("Player 1: Mr.Jones vs Player 2: Mrs.Jones FIGHT!")
  end

  scenario "Player 1 has hit points" do
  	visit "/play"
  	expect(page).to have_text("HP : 100")
  end
end
