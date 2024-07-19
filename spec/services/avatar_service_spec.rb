require 'rails_helper'

RSpec.describe 'Avatar Service' do
  describe 'api calls' do
    it 'can call to an api and get json data back', :vcr do
      service = AvatarService.new
      nation = 'fire+nation'
      response = service.search(nation)

      expect(response.status).to eq(200)

      results = JSON.parse(response.body, symbolize_names: true)

      expect(results).to be_a(Array)
      expect(results).not_to be_empty
      expect(results.first).to be_a(Hash)
      expect(results.first).to have_key(:name)
    end
  end
end
