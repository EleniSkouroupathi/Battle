require 'spec_helper'

describe Battle do
	feature 'View Hit Points' do
		scenario 'see players points..' do
			sign_in_and_play
			expect(page).to have_content 'Mattia: 80HP'
			expect(page).to have_content 'Eleni: 80HP'
		end
	end
end
