require 'spec_helper'

describe Battle do

	feature 'Changes player' do
		scenario 'Changes from player 1 to player 2' do
			sign_in_and_play
			click_button 'Attack'
			expect(page).not_to have_content 'Eleni: 80'
			click_button 'Next Turn'
			expect(page).to have_content 'Player 2\'s turn'
		end	
	end


end