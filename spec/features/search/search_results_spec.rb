require 'rails_helper'

RSpec.describe 'Search Results page' do
  describe 'search by nation' do
    it 'returns and displays a given nations characters', :vcr do
      visit root_path

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('There are 97 characters in the fire nation')
      expect(page).to have_css('.character', count: 25)
    end
  end
end
