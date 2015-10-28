require 'spec_helper'

describe Battle do
	feature 'View Hit Points' do
		scenario 'see players points..' do
			visit('/')
			fill_in :player_1_name, with: 'Rajeev'
			fill_in :player_2_name, with: 'Eleni'
			click_button 'Submit'
			expect(page).to have_content 'Rajeev: 80HP'
			expect(page).to have_content 'Eleni: 80HP'
		end
	end
end