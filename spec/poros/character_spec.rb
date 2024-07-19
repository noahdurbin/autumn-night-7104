require 'rails_helper'

RSpec.describe 'Character' do
  describe 'initialize' do
    it 'can initialize with attributes' do
      data = {
        "_id": "5cf5679a915ecad153ab68ef",
                "allies": [
                    "Azula"
                ],
                "enemies": [
                    "Sokka"
                ],
                "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626",
                "name": "Bully guard",
                "affiliation": "Fire Nation"
      }
      character = Character.new(data)

      expect(character).to be_a Character
    end

    it 'has attributes' do
      data = {
        "_id": "5cf5679a915ecad153ab68ef",
                "allies": [
                    "Azula"
                ],
                "enemies": [
                    "Sokka"
                ],
                "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626",
                "name": "Bully guard",
                "affiliation": "Fire Nation"
      }
      character = Character.new(data)

      expect(character.name).to eq('Bully guard')
      expect(character.allies).to eq(['Azula'])
      expect(character.enemies).to eq(['Sokka'])
      expect(character.affiliation).to eq('Fire Nation')
      expect(character.photo_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626')
    end
  end
end
