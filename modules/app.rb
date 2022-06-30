require_relative './music_album_services'
require_relative './games_services'
require_relative './books_services'
require_relative './list_services'

class App
  include ListServices
  include MusicAlbumServices
  include GamesServices
  include BooksServices

  def run
    loop do
      app_description
      option = gets.chomp.to_i
      select_option(option)
    end
  end

  def app_description
    puts " Welcome to The Catalog of Items!\n\n"
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all games'
    puts '4 - List all labels'
    puts '5 - List all genres'
    puts '6 - List all authors'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '0 - Exit'
  end

  def select_option(option)
    case option
    when 1..6
      list_service(option)
    when 7
      puts 'Awesome Let\'s add a book 📖'
      sleep 0.5
      add_book
    when 8
      puts 'Awesome Let\'s add a music album 🎶'
      sleep 0.5
      add_music_album
    when 9
      add_game
    when 0
      puts "Thank you for using the Catalog of Items\n"
      sleep 0.5
      puts 'Goodbye, See you next Time'
      exit
    else
      puts 'Please enter a correct option'
    end
  end
end
