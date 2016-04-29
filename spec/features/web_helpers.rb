def sign_in_and_play
	visit('/')
    fill_in :player_1_name, with: 'Slasher'
    fill_in :player_2_name, with: 'Mittens'
    choose "twoplay"
    click_button 'Huzzah mothafucka!'
end

def sign_in_and_play_single_player
    visit('/')
    fill_in :player_1_name, with: 'Slasher'
    fill_in :player_2_name, with: 'Mittens'
    choose "oneplay"
    click_button 'Huzzah mothafucka!'
end

def sign_in_and_play_and_scratch
	visit('/')
    fill_in :player_1_name, with: 'Slasher'
    fill_in :player_2_name, with: 'Mittens'
    choose "twoplay"
    click_button 'Huzzah mothafucka!'
		click_button 'Scratch'
end

def attack_till_death
		click_button 'Revenge!'
		click_button 'Scratch'
end
