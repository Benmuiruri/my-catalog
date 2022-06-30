require 'spec_helper'

describe Label do
  before :all do
    @book = Book.new('Funny Girl', 'BETSY BIRD', 'book jacket', '2020-12-14')
    @label = Label.new('Comedy', 'Green')
  end

  context 'When creating @label, an instance of class label' do
    it 'takes two parameters and return a Label object' do
      expect(@label).to be_instance_of Label
    end
  end

  context 'When retrieving the title of a label' do
    it 'returns the correct title' do
      expected_value = 'Comedy'
      expect(@label.title).to eq(expected_value)
    end
  end

  context 'When adding a book into a label' do
    it 'adds the book into a specific label' do
      @label.add_items(@book)
      expect(@label.items).to include(@book)
      expect(@label.items.length).to eq(1)
    end
  end
end
