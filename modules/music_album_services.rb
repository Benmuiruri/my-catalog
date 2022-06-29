require_relative '../lib/music_album'
require_relative '../lib/genre'
require_relative 'save_data'
require 'pry'

module MusicAlbumServices
  include SaveData
  def music_album_data(input)
    output = ''
    while output.empty?
      print "Enter the #{input} of the music album: "
      output = gets.chomp
      puts "#{input} cannot be blank, please enter a valid #{input} " if output.empty?
    end
    output
  end

  def music_album_publish_date(input)
    output = ''
    while output.empty?
      print "Enter the #{input} of the music album: "
      output = gets.chomp
      puts "#{input} cannot be blank, please enter a valid #{input} " if output.empty?
    end
    output
  end

  def spotify_listing
    correct_input = false
    until correct_input
      print 'Is the album on Spotify [Y/N]:'
      on_spotify_input = gets.chomp.downcase
      correct_input = %w[y n].include?(on_spotify_input)
      puts "Please enter Y or N only\n"
    end
    _on_spotify = on_spotify_input == 'y'
  end

  def genre_data(input)
    output = ''
    while output.empty?
      print "Enter #{input} of the music album: "
      output = gets.chomp
      puts "#{input}  cannot be blank, please enter a valid #{input} " if output.empty?
    end
    output
  end

  def add_music_album
    album_name = music_album_data('Name')
    artist_name = music_album_data('Artist Name')
    publish_date = music_album_publish_date('Publish Date')
    genre_name = genre_data('Genre')
    on_spotify = spotify_listing

    music_album = MusicAlbum.new(album_name, artist_name, publish_date, on_spotify)
    puts "The music album #{album_name} was created successfully"
    genre = Genre.new(genre_name)
    music_album.add_genre(genre)
    music_albums << music_album
    SaveData.save_music_albums(music_albums)
  end
end
