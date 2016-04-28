def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, :with => 'Dave'
  fill_in :player_2_name, :with => 'Mittens'
  click_button 'Submit'
end

def switch_turns
	click_button 'Attack'
	click_button 'switch turns'
end

def attack_to_death
	10.times { switch_turns }
  	click_button 'Attack'
end
