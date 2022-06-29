require 'spec_helper'


describe Label do
    before :all do
        @book = Book.new('Funny Girl', 'BETSY BIRD', 'book jacket' ,'12-14-2020')
        @label = Label.new('Comedy', 'Green')
end