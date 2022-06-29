class Genre
  def initialize(name, music_album)
    @id = rand(1..1000)
    @name = name
    @music_album = music_album

    @music_album.items << self
  end
end
