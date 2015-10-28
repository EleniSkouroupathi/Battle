require 'spec_helper'

describe Battle do
	feature 'Enter Names' do
		scenario 'submitting names..' do
			visit('/')
			fill_in :player_1_name, with: 'Rajeev'
			fill_in :player_2_name, with: 'Eleni'
			click_button 'Submit'
			expect(page).to have_content 'Rajeev vs. Eleni'
		end
	end
end