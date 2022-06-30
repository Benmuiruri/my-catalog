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

  def read_books_data
    File.write('./json_files/books.json', '[]') unless File.exist?('./json_files/books.json')
    JSON.parse(File.read('./json_files/books.json'))
  end

  def list_all_books
    books = read_books_data
    if books.empty?
      puts "There are no books in the catalog, please add some books\n"
    else
      puts "Loading list of books in the catalog...\n"
      sleep 0.75
      books.each_with_index do |book, index|
        puts "#{index + 1}) Book Name: #{book['name']} || Book publisher: #{book['publisher']} ||
        \r   Cover state: #{book['cover_state']} || Label title: #{book['label_title']} ||
        \r   Label color: #{book['label_color']} || Released on: #{book['publish_date']} ||\n\n"
      end
    end
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
    books = read_books_data
    if books.empty?
      puts "There are no label in the catalog, please add some books\n"
    else
      books.each_with_index do |book, index|
        puts "\r#{index + 1}) Label title: #{book['label_title']} || Label color: #{book['label_color']} ||"
      end
    end
  end

  def list_all_authors
    puts 'These are all the authors'
  end
end
