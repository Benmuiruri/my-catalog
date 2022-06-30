require 'json'
require 'pry'

module SaveData
  def self.save_books
    puts 'Book saved'
  end

  def self.save_games
    puts 'Games saved'
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
