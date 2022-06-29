# require 'spec_helper'

# describe Genre do
#   before :all do
#     @music_album = MusicAlbum.new('Carter 3', 'Lil Wayne', '10/02/2013', true)
#   end

#   before :each do
#     @genre = Genre.new('Hip hop', @music_album)
#   end

#   context 'When creating @genre, an instance of class Genre ' do
#     it 'takes two parameters and return a Genre object' do
#       expect(@genre).to be_instance_of Genre
#     end
#   end

#   context 'When retrieving the name of a music_album in a genre' do
#     it 'returns the correct name of a music album in a certain genre' do
#       expected_value = 'Carter 3'
#       expect(@genre.music_album.album_name).to eq(expected_value)
#     end
#   end
# end
