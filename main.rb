#!/usr/bin/env ruby

require_relative 'app'
require_relative 'list_service'

@my_app = App.new

def main
  app_description

  option = gets.chomp.to_i

  select_option(option)
end

def app_description
  puts "Welcome to My Catalog!\n\n"
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all music albums'
  puts '3 - List all games'
  puts '4 - List all genres'
  puts '5 - List all labels'
  puts '6 - List all authors'
  puts '7 - Add a book'
  puts '8 - Add a music album'
  puts '9 - Add a game'
  puts '10 - Exit'
end

def select_option(option)
  case option
  when 1..6
    list_service(option)
    main
  when 7..9
    create_service(option)
    main
  when 10
    puts 'Goodbye'
    exit
  else
    puts 'Choose a correct option'
    main
  end
end

main