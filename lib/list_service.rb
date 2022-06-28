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

def list_all_music_albums
  puts 'These are all the music albums'
end

def list_all_games
  puts 'These are all the games'
end

def list_all_genres
  puts 'These are all the genres'
end

def list_all_labels
  puts 'These are all the labels'
end

def list_all_authors
  puts 'These are all the authors'
end