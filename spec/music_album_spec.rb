require 'spec_helper'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('Carter 3', 'Lil Wayne', 'Hip-hop','2020-05-05', true)
  end

  context 'Create @music_album, an instance of class MusicAlbum ' do
    it 'takes five parameters and return a MusicAlbum object' do
      expect(@music_album).to be_instance_of MusicAlbum
    end
  end
end