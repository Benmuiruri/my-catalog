module AddService
  def add_service(option)
    case option
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    end
  end

  def add_book
    puts 'This is for adding a book'
  end

  def add_music_album; end

  def add_game
    puts 'This is for adding a game'
  end
end
