require 'json'
require 'pry'

module SaveData
  def self.save_books(books)
    File.write('./json_files/books.json', []) unless File.exist?('./json_files/books.json')
    File.write('./json_files/books.json', []) if File.empty?('./json_files/books.json')
    books_array = JSON.parse(File.read('./json_files/books.json'))

    books.map do |book|
      books_array <<
        { class_instance: 'Book', id: book.id, name: book.name,
          publisher: book.publisher, cover_state: book.cover_state,
          publish_date: book.publish_date, label_title: book.label.title, label_color: book.label.color }
    end
    File.write('./json_files/books.json', JSON.generate(books_array))
  end

  def self.save_games(games)
    File.write('./json_files/games.json', []) unless File.exist?('./json_files/games.json')
    File.write('./json_files/games.json', []) if File.empty?('./json_files/games.json')
    games_array = JSON.parse(File.read('./json_files/games.json'))
    games.map do |game|
      games_array <<
        { class_instance: 'Game', id: game.id, game_name: game.game_name, multiplayer: game.multiplayer,
          last_played_at: game.last_played_at, publish_date: game.publish_date,
          first_name: game.author.first_name, last_name: game.author.last_name }
    end
    File.write('./json_files/games.json', JSON.generate(games_array))
  end


  def self.save_music_albums(music_albums)
    File.write('./json_files/music_albums.json', []) if File.empty?('./json_files/music_albums.json')
    music_albums_array = JSON.parse(File.read('./json_files/music_albums.json'))

    music_albums.map do |music_album|
      music_albums_array <<
        { class_instance: 'MusicAlbum', id: music_album.id, album_name: music_album.album_name,
          artist_name: music_album.artist_name, publish_date: music_album.publish_date,
          on_spotify: music_album.on_spotify, genre: music_album.genre.name }
    end
    File.write('./json_files/music_albums.json', JSON.generate(music_albums_array))
  end
end
