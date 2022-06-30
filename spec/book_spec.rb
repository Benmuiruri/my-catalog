require 'spec_helper'

describe Label do
    before :each do
        @book = Book.new('Funny Girl', 'BETSY BIRD', 'Solid' ,'2010-12-14')
    end

    context 'When creating @book, an instance of class Book ' do
        it 'takes four parameters and return a Book object' do
          expect(@book).to be_instance_of Book
        end
    end

    context 'When retrieving the name of a book' do
        it 'returns the correct name' do
          expected_value = 'Funny Girl'
          expect(@book.name).to eq(expected_value)
        end
    end

    context 'When archiving a book' do
        it 'archives the book' do
          can_be_archived = @book.can_be_archived?
          expect(can_be_archived).to be_truthy
        end
    end

    context 'When archiving a book younger than 10 years' do
        it 'is not archivable' do
          @book.publish_date = Date.strptime('2014-02-10', '%Y-%m-%d')
          can_be_archived = @book.can_be_archived?
          expect(can_be_archived).to be_falsey
        end
    end


end