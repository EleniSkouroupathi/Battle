require 'spec_helper'

describe Battle do
	feature 'Enter Names' do
		scenario 'submitting names..' do
			sign_in_and_play
			expect(page).to have_content 'Superman and Batman are in battle!'
		end
	end
end
