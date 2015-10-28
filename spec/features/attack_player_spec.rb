require 'spec_helper'

describe Battle do
	feature 'Attack player' do
		scenario 'Attacks other player and gets confirmation' do
		sign_in_and_play
	end
	end
	

	feature 'Attack player' do
		scenario 'Attacks other player and gets confirmation' do
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content 'Player 1 attacked player 2!'
	end
	end
	
end