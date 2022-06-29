require 'pry'
require_relative '../lib/music_album'
require_relative '../lib/genre'
require_relative 'save_data'

module MusicAlbumServices
  include SaveData
  def add_music_album
    on_spotify = false
    correct_input = false
    genre_input = ''
    puts 'Awesome Let\'s add a music album 🎶'
    sleep 0.5
    print 'Enter the name of the album:'
    album_name = gets.chomp
    print 'Enter the name of the artist: '
    artist_name = gets.chomp
    print 'Enter music album publish date (mm/dd/yyyy): '
    publish_date = gets.chomp
    
    until !genre_input.empty?
      print 'Enter genre of the music album: '
      genre_input = gets.chomp
      puts "Genre name cannot be blank, please enter a valid genre name" if genre_input.empty?
    end

    until correct_input
      print 'Is the album on Spotify [Y/N]:'
      on_spotify_input = gets.chomp.downcase
      correct_input = %w[y n].include?(on_spotify_input)
      puts "Please enter Y or N only\n"
    end

    on_spotify = on_spotify_input == 'y'
    music_album = MusicAlbum.new(album_name, artist_name, publish_date, on_spotify)
    puts "The music album #{album_name} created successfully"
    genre = Genre.new(genre_input)
    music_album.add_genre(genre)
    binding.pry
    SaveData.save_book
  end
end
