require 'spec_helper'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('Carter 3', 'Lil Wayne', 'Hip-hop','2020-05-05', true)
  end

  context 'When creating @music_album, an instance of class MusicAlbum ' do
    it 'takes five parameters and return a MusicAlbum object' do
      expect(@music_album).to be_instance_of MusicAlbum
    end
  end

  context 'When retrieving the name of a music_album' do
    it 'returns the correct name' do
      expected_value = 'Carter 3'
      expect(@music_album.name).to eq(expected_value)
    end
  end
end