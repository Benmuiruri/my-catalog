require_relative 'item'

class MusicAlbum < Item
  attr_accessor :album_name, :artist_name, :publish_date, :on_spotify

  def initialize(album_name, artist_name, publish_date, on_spotify)
    super(publish_date)
    @album_name = album_name
    @artist_name = artist_name
    @on_spotify = on_spotify
  end
end
