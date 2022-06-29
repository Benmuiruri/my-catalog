require 'json'
require_relative './app'

module ListServices
  def list_service(option)
    case option
    when 1
      list_all_books
    when 2
      list_all_music_albums
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_all_labels
    when 6
      list_all_authors
    end
  end

  def list_all_books
    puts 'These are all the books'
  end

  def read_music_album_data
    File.write('./json_files/music_albums.json', '[]') unless File.exist?('./json_files/music_albums.json')
    _music_albums = JSON.parse(File.read('./json_files/music_albums.json'))
  end

  def list_all_music_albums
    music_albums = read_music_album_data
    if music_albums.empty?
      puts "There are no music albums in the catalog, please add some music albums\n"
    else
      puts "Loading list of music albums in the catalog...\n"
      sleep 0.75
      music_albums.each_with_index do |music_album, index|
        puts "#{index + 1}) Album Name: #{music_album['album_name']}  Album Genre: #{music_album['genre']}
        Artist Name: #{music_album['artist_name']}  Released on: #{music_album['publish_date']}\n\n"
      end
    end
  end

  def list_all_games
    puts 'These are all the games'
  end

  def list_all_genres
    music_albums = read_music_album_data
    if music_albums.empty?
      puts "There are no genres in the catalog, please add some music albums\n"
    else
      music_albums.each_with_index do |music_album, index|
        puts "#{index + 1}) Genre Name: #{music_album['genre']}"
      end
    end
  end

  def list_all_labels
    puts 'These are all the labels'
  end

  def list_all_authors
    puts 'These are all the authors'
  end
end
