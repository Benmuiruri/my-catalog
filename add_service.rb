def add_service(option)
  case option
  when 3
    add_book
  when 4
    add_music_album
  when 5
    add_game
  end
end

def add_book
  puts 'This is for adding a book'
end

def add_music_album
  puts 'This is for adding a music album'
end

def add_game
  puts 'This is for adding a game'
end
