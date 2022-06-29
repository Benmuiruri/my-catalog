require 'spec_helper'

describe Genre do
  before :all do
    @music_album = MusicAlbum.new('Carter 3', 'Lil Wayne', '2013-02-10', true)
    @genre = Genre.new('Hip hop')
  end

  context 'When creating @genre, an instance of class Genre ' do
    it 'takes two parameters and return a Genre object' do
      expect(@genre).to be_instance_of Genre
    end
  end

  context 'When retrieving the name of a genre' do
    it 'returns the correct name' do
      expected_value = 'Hip hop'
      expect(@genre.name).to eq(expected_value)
    end
  end

  context 'When adding a music album into a genre' do
    it 'adds the music album into a specific genre' do
      @genre.add_album_to_items(@music_album)
      expect(@genre.items).to include(@music_album)
    end
  end
end
