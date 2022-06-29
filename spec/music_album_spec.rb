require 'spec_helper'
require 'date'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('Carter 3', 'Lil Wayne', '2018-02-10', true)
  end

  context 'When creating @music_album, an instance of class MusicAlbum ' do
    it 'takes five parameters and return a MusicAlbum object' do
      expect(@music_album).to be_instance_of MusicAlbum
    end
  end

  context 'When retrieving the name of a music_album' do
    it 'returns the correct name' do
      expected_value = 'Carter 3'
      expect(@music_album.album_name).to eq(expected_value)
    end
  end

  context 'When archiving a music_album' do
    it 'archives the music album' do
      can_be_archived = @music_album.can_be_archived?
      expect(can_be_archived).to be_truthy
    end
  end
end
