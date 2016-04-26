def sign_in_and_play
  visit "/"
    fill_in "Player 1 name:", :with => "Mr.Jones"
    fill_in "Player 2 name:", :with => "Mrs.Jones"
    click_button "Submit"
end