require 'spec_helper'

describe Battle do
	feature 'Enter Names' do
		scenario 'submitting names..' do
			sign_in_and_play
			expect(page).to have_content 'Rajeev vs. Eleni'
		end
	end
end