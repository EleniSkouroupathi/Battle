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

	feature 'Reduce HP by 20HP' do
		scenario 'Attack reduces other player\'s HP' do
			sign_in_and_play
			click_button 'Attack'
			expect(page).not_to have_content 'Eleni: 80HP'
			expect(page).to have_content 'Eleni: 60HP'
		end
	end

end
